module Wool
  module SexpAnalysis
    # This is a simple inherited attribute applied to each node,
    # giving a pointer to that node's next and previous AST node.
    # That way AST traversal is easier.
    module SourceLocationAnnotation
      extend BasicAnnotation
      add_properties :source_begin, :source_end
      
      # This is the annotator for the next and prev annotation.
      class Annotator
        include Visitor
        
        def default_visit(node)
          visit_children(node)
          if (first_child = node.children.find { |child| Sexp === child })
            node.source_begin = first_child.source_begin
          end
          if (last_child = node.children.reverse.find { |child| Sexp === child })
            node.source_end = last_child.source_end
          end
        end
        
        add :@ident, :@int, :@kw, :@float, :@tstring_content, :@regexp_end,
            :@ivar, :@cvar, :@gvar, :@const, :@label, :@CHAR do |node, text, location|
          node.source_begin = location
          node.source_end = location.dup
          node.source_end[1] += text.size
        end
        
        add :regexp_literal do |node, components, regexp_end|
          default_visit node
          node.source_begin = node.source_begin.dup  # make a copy we can mutate
          if backtrack_expecting!(node.source_begin, -1, '/')
            # matched a / before the node
          elsif backtrack_expecting!(node.source_begin, -3, '%r')
            # matched a %r[]/%r{}/...
          end
        end
        
        add :string_literal do |node, content|
          default_visit node
          node.source_begin = node.source_begin.dup  # make a copy we can mutate
          node.source_end = node.source_end.dup  # make a copy we can mutate
          if backtrack_expecting!(node.source_begin, -1, "'") ||
             backtrack_expecting!(node.source_begin, -1, '"')
            # matched a single-quoted-string
            node.source_end[1] += 1
          end
        end
        
        add :string_embexpr do |node, content|
          default_visit node
          node.source_begin = node.source_begin.dup
          node.source_end = node.source_end.dup
          node.source_begin[1] -= 2  # always prefixed with #{
          node.source_end[1] += 1  # always suffixed with }
        end
        
        add :dyna_symbol do |node, content|
          default_visit node
          node.source_begin = node.source_begin.dup
          node.source_end = node.source_end.dup
          node.source_begin[1] -= 2  # always prefixed with :' or :"
          node.source_end[1] += 1  # always suffixed with "
        end
        
        add :symbol_literal do |node, content|
          default_visit node
          node.source_begin = node.source_begin.dup
          node.source_begin[1] -= 1  # always prefixed with :
        end
        
        add :hash do |node, content|
          default_visit node
          node.source_begin = node.source_begin.dup
          node.source_end = node.source_end.dup
          backtrack_searching!(node.source_begin, '{')
        end
        
        # Searches for the given text starting at the given location, going backwards.
        # Modifies the location to match the discovered expected text on success.
        #
        # location: [Fixnum, Fixnum]
        # expectation: String
        # returns: Boolean
        def backtrack_searching!(location, expectation)
          line = lines[location[0] - 1]
          begin
            if (expectation_location = line.rindex(expectation, location[1]))
              location[1] = expectation_location
              return true
            end
            location[0] -= 1
            line = lines[location[0] - 1]
            location[1] = line.size
          end while location[0] >= 0
          false
        end
        
        # Attempts to backtrack for the given string from the given location.
        # Returns true if successful.
        def backtrack_expecting!(location, offset, expectation)
          if text_at(location, offset, expectation.length) == expectation
            location[1] += offset
            true
          end
        end
        
        def text_at(location, offset, length)
          line = lines[location[0] - 1]
          line[location[1] + offset, length]
        end
      end
      add_global_annotator Annotator
    end
  end
end