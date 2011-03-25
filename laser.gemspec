# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{laser}
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Edgar"]
  s.date = %q{2011-03-25}
  s.default_executable = %q{laser}
  s.description = %q{Laser is an advanced static analysis tool for Ruby.}
  s.email = %q{michael.j.edgar@dartmouth.edu}
  s.executables = ["laser"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "TODO.md",
    "VERSION",
    "bin/laser",
    "design_docs/goals.md",
    "design_docs/object_regex.md",
    "design_docs/type_annotations.md",
    "features/laser.feature",
    "features/step_definitions/laser_steps.rb",
    "features/support/env.rb",
    "features/support/testdata/1_input",
    "features/support/testdata/1_output",
    "features/support/testdata/2_input",
    "features/support/testdata/2_output",
    "features/support/testdata/3_input",
    "features/support/testdata/3_output",
    "features/support/testdata/4_input",
    "features/support/testdata/4_output",
    "features/support/testdata/5_input",
    "laser.gemspec",
    "lib/laser.rb",
    "lib/laser/analysis/annotations.rb",
    "lib/laser/analysis/annotations/annotation_config.yaml",
    "lib/laser/analysis/annotations/comment_attachment_annotation.rb",
    "lib/laser/analysis/annotations/node_pointers_annotation.rb",
    "lib/laser/analysis/annotations/runtime_annotation.rb",
    "lib/laser/analysis/argument_expansion.rb",
    "lib/laser/analysis/arity.rb",
    "lib/laser/analysis/assignment_expression.rb",
    "lib/laser/analysis/bindings.rb",
    "lib/laser/analysis/bootstrap.rb",
    "lib/laser/analysis/comments.rb",
    "lib/laser/analysis/control_flow.rb",
    "lib/laser/analysis/control_flow/basic_block.rb",
    "lib/laser/analysis/control_flow/cfg_builder.rb",
    "lib/laser/analysis/control_flow/control_flow_graph.rb",
    "lib/laser/analysis/errors.rb",
    "lib/laser/analysis/laser_class.rb",
    "lib/laser/analysis/lexical_analysis.rb",
    "lib/laser/analysis/method_call.rb",
    "lib/laser/analysis/protocol_registry.rb",
    "lib/laser/analysis/scope.rb",
    "lib/laser/analysis/scope_annotation.rb",
    "lib/laser/analysis/sexp.rb",
    "lib/laser/analysis/sexp_analysis.rb",
    "lib/laser/analysis/sexp_extensions/constant_extraction.rb",
    "lib/laser/analysis/sexp_extensions/method_resolution.rb",
    "lib/laser/analysis/sexp_extensions/source_location.rb",
    "lib/laser/analysis/sexp_extensions/type_inference.rb",
    "lib/laser/analysis/signature.rb",
    "lib/laser/analysis/visitor.rb",
    "lib/laser/annotation_parser/annotations.treetop",
    "lib/laser/annotation_parser/annotations_parser.rb",
    "lib/laser/annotation_parser/class_annotations.treetop",
    "lib/laser/annotation_parser/class_annotations_parser.rb",
    "lib/laser/annotation_parser/parsers.rb",
    "lib/laser/annotation_parser/structural.treetop",
    "lib/laser/annotation_parser/structural_parser.rb",
    "lib/laser/annotation_parser/useful_parsers.treetop",
    "lib/laser/annotation_parser/useful_parsers_parser.rb",
    "lib/laser/rake/task.rb",
    "lib/laser/runner.rb",
    "lib/laser/scanner.rb",
    "lib/laser/standard_library/_thread.rb",
    "lib/laser/standard_library/abbrev.rb",
    "lib/laser/standard_library/array.rb",
    "lib/laser/standard_library/base64.rb",
    "lib/laser/standard_library/basic_object.rb",
    "lib/laser/standard_library/benchmark.rb",
    "lib/laser/standard_library/bignum.rb",
    "lib/laser/standard_library/cgi.rb",
    "lib/laser/standard_library/cgi/cookie.rb",
    "lib/laser/standard_library/cgi/core.rb",
    "lib/laser/standard_library/cgi/html.rb",
    "lib/laser/standard_library/cgi/session.rb",
    "lib/laser/standard_library/cgi/session/pstore.rb",
    "lib/laser/standard_library/cgi/util.rb",
    "lib/laser/standard_library/class_definitions.rb",
    "lib/laser/standard_library/comparable.rb",
    "lib/laser/standard_library/enumerable.rb",
    "lib/laser/standard_library/exceptions.rb",
    "lib/laser/standard_library/fixnum.rb",
    "lib/laser/standard_library/float.rb",
    "lib/laser/standard_library/integer.rb",
    "lib/laser/standard_library/numbers.rb",
    "lib/laser/standard_library/set.rb",
    "lib/laser/standard_library/string.rb",
    "lib/laser/standard_library/stringio.rb",
    "lib/laser/standard_library/tsort.rb",
    "lib/laser/support/acts_as_struct.rb",
    "lib/laser/support/inheritable_attributes.rb",
    "lib/laser/support/module_extensions.rb",
    "lib/laser/support/object_regex.rb",
    "lib/laser/third_party/rgl/adjacency.rb",
    "lib/laser/third_party/rgl/base.rb",
    "lib/laser/third_party/rgl/bidirectional.rb",
    "lib/laser/third_party/rgl/condensation.rb",
    "lib/laser/third_party/rgl/connected_components.rb",
    "lib/laser/third_party/rgl/dot.rb",
    "lib/laser/third_party/rgl/enumerable_ext.rb",
    "lib/laser/third_party/rgl/graphxml.rb",
    "lib/laser/third_party/rgl/implicit.rb",
    "lib/laser/third_party/rgl/mutable.rb",
    "lib/laser/third_party/rgl/rdot.rb",
    "lib/laser/third_party/rgl/topsort.rb",
    "lib/laser/third_party/rgl/transitiv_closure.rb",
    "lib/laser/third_party/rgl/transitivity.rb",
    "lib/laser/third_party/rgl/traversal.rb",
    "lib/laser/third_party/stream.rb",
    "lib/laser/third_party/trollop.rb",
    "lib/laser/types/types.rb",
    "lib/laser/warning.rb",
    "lib/laser/warnings/assignment_in_condition.rb",
    "lib/laser/warnings/comment_spacing.rb",
    "lib/laser/warnings/extra_blank_lines.rb",
    "lib/laser/warnings/extra_whitespace.rb",
    "lib/laser/warnings/line_length.rb",
    "lib/laser/warnings/misaligned_unindentation.rb",
    "lib/laser/warnings/operator_spacing.rb",
    "lib/laser/warnings/parens_on_declaration.rb",
    "lib/laser/warnings/rescue_exception.rb",
    "lib/laser/warnings/semicolon.rb",
    "lib/laser/warnings/sexp_errors.rb",
    "lib/laser/warnings/useless_double_quotes.rb",
    "spec/analysis_specs/annotations_spec.rb",
    "spec/analysis_specs/annotations_specs/comment_attachment_spec.rb",
    "spec/analysis_specs/annotations_specs/node_pointers_annotation_spec.rb",
    "spec/analysis_specs/annotations_specs/runtime_annotation_spec.rb",
    "spec/analysis_specs/annotations_specs/spec_helper.rb",
    "spec/analysis_specs/argument_expansion_spec.rb",
    "spec/analysis_specs/assignment_expression_spec.rb",
    "spec/analysis_specs/bindings_spec.rb",
    "spec/analysis_specs/comment_spec.rb",
    "spec/analysis_specs/control_flow_specs/cfg_builder_spec.rb",
    "spec/analysis_specs/control_flow_specs/control_flow_graph_spec.rb",
    "spec/analysis_specs/control_flow_specs/spec_helper.rb",
    "spec/analysis_specs/error_spec.rb",
    "spec/analysis_specs/laser_class_spec.rb",
    "spec/analysis_specs/lexical_analysis_spec.rb",
    "spec/analysis_specs/protocol_registry_spec.rb",
    "spec/analysis_specs/scope_annotation_spec.rb",
    "spec/analysis_specs/scope_spec.rb",
    "spec/analysis_specs/sexp_analysis_spec.rb",
    "spec/analysis_specs/sexp_extension_specs/constant_extraction_spec.rb",
    "spec/analysis_specs/sexp_extension_specs/method_resolution_spec.rb",
    "spec/analysis_specs/sexp_extension_specs/source_location_spec.rb",
    "spec/analysis_specs/sexp_extension_specs/spec_helper.rb",
    "spec/analysis_specs/sexp_extension_specs/type_inference_spec.rb",
    "spec/analysis_specs/sexp_spec.rb",
    "spec/analysis_specs/signature_spec.rb",
    "spec/analysis_specs/spec_helper.rb",
    "spec/analysis_specs/visitor_spec.rb",
    "spec/annotation_parser_specs/annotations_parser_spec.rb",
    "spec/annotation_parser_specs/class_annotation_parser_spec.rb",
    "spec/annotation_parser_specs/parsers_spec.rb",
    "spec/annotation_parser_specs/spec_helper.rb",
    "spec/annotation_parser_specs/structural_parser_spec.rb",
    "spec/laser_spec.rb",
    "spec/rake_specs/spec_helper.rb",
    "spec/rake_specs/task_spec.rb",
    "spec/runner_spec.rb",
    "spec/scanner_spec.rb",
    "spec/spec_helper.rb",
    "spec/standard_library/exceptions_spec.rb",
    "spec/standard_library/globals_spec.rb",
    "spec/standard_library/set_spec.rb",
    "spec/standard_library/spec_helper.rb",
    "spec/standard_library/standard_library_spec.rb",
    "spec/support_specs/acts_as_struct_spec.rb",
    "spec/support_specs/module_extensions_spec.rb",
    "spec/support_specs/spec_helper.rb",
    "spec/type_specs/spec_helper.rb",
    "spec/type_specs/types_spec.rb",
    "spec/warning_spec.rb",
    "spec/warning_specs/assignment_in_condition_spec.rb",
    "spec/warning_specs/comment_spacing_spec.rb",
    "spec/warning_specs/extra_blank_lines_spec.rb",
    "spec/warning_specs/extra_whitespace_spec.rb",
    "spec/warning_specs/line_length_spec.rb",
    "spec/warning_specs/misaligned_unindentation_spec.rb",
    "spec/warning_specs/operator_spacing_spec.rb",
    "spec/warning_specs/parens_on_declaration_spec.rb",
    "spec/warning_specs/rescue_exception_spec.rb",
    "spec/warning_specs/semicolon_spec.rb",
    "spec/warning_specs/spec_helper.rb",
    "spec/warning_specs/useless_double_quotes_spec.rb",
    "status_reports/2010/12/2010-12-14.md",
    "status_reports/2010/12/2010-12-23.md",
    "status_reports/2010/12/2010-12-24.md",
    "test/third_party_tests/rgl_tests/TestComponents.rb",
    "test/third_party_tests/rgl_tests/TestCycles.rb",
    "test/third_party_tests/rgl_tests/TestDirectedGraph.rb",
    "test/third_party_tests/rgl_tests/TestDot.rb",
    "test/third_party_tests/rgl_tests/TestEdge.rb",
    "test/third_party_tests/rgl_tests/TestGraph.rb",
    "test/third_party_tests/rgl_tests/TestGraphXML.rb",
    "test/third_party_tests/rgl_tests/TestImplicit.rb",
    "test/third_party_tests/rgl_tests/TestRdot.rb",
    "test/third_party_tests/rgl_tests/TestTransitivity.rb",
    "test/third_party_tests/rgl_tests/TestTraversal.rb",
    "test/third_party_tests/rgl_tests/TestUnDirectedGraph.rb",
    "test/third_party_tests/rgl_tests/examples/north/Graph.log",
    "test/third_party_tests/rgl_tests/examples/north/g.10.0.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.1.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.11.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.12.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.13.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.14.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.15.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.16.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.17.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.19.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.2.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.20.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.22.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.24.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.25.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.27.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.28.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.29.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.3.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.30.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.31.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.34.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.37.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.38.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.39.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.4.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.40.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.41.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.42.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.45.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.46.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.5.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.50.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.56.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.57.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.58.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.6.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.60.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.61.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.62.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.68.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.69.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.7.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.70.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.71.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.72.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.74.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.75.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.78.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.79.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.8.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.80.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.82.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.83.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.85.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.86.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.88.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.89.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.9.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.90.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.91.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.92.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.93.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.10.94.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.12.8.graphml",
    "test/third_party_tests/rgl_tests/examples/north/g.14.9.graphml",
    "test/third_party_tests/rgl_tests/test_helper.rb",
    "test/third_party_tests/test_inheritable_attributes.rb",
    "test/third_party_tests/test_stream.rb",
    "test/third_party_tests/test_trollop.rb"
  ]
  s.homepage = %q{http://github.com/michaeledgar/laser}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.1}
  s.summary = %q{Analysis and linting tool for Ruby.}
  s.test_files = [
    "spec/analysis_specs/annotations_spec.rb",
    "spec/analysis_specs/annotations_specs/comment_attachment_spec.rb",
    "spec/analysis_specs/annotations_specs/node_pointers_annotation_spec.rb",
    "spec/analysis_specs/annotations_specs/runtime_annotation_spec.rb",
    "spec/analysis_specs/annotations_specs/spec_helper.rb",
    "spec/analysis_specs/argument_expansion_spec.rb",
    "spec/analysis_specs/assignment_expression_spec.rb",
    "spec/analysis_specs/bindings_spec.rb",
    "spec/analysis_specs/comment_spec.rb",
    "spec/analysis_specs/control_flow_specs/cfg_builder_spec.rb",
    "spec/analysis_specs/control_flow_specs/control_flow_graph_spec.rb",
    "spec/analysis_specs/control_flow_specs/spec_helper.rb",
    "spec/analysis_specs/error_spec.rb",
    "spec/analysis_specs/laser_class_spec.rb",
    "spec/analysis_specs/lexical_analysis_spec.rb",
    "spec/analysis_specs/protocol_registry_spec.rb",
    "spec/analysis_specs/scope_annotation_spec.rb",
    "spec/analysis_specs/scope_spec.rb",
    "spec/analysis_specs/sexp_analysis_spec.rb",
    "spec/analysis_specs/sexp_extension_specs/constant_extraction_spec.rb",
    "spec/analysis_specs/sexp_extension_specs/method_resolution_spec.rb",
    "spec/analysis_specs/sexp_extension_specs/source_location_spec.rb",
    "spec/analysis_specs/sexp_extension_specs/spec_helper.rb",
    "spec/analysis_specs/sexp_extension_specs/type_inference_spec.rb",
    "spec/analysis_specs/sexp_spec.rb",
    "spec/analysis_specs/signature_spec.rb",
    "spec/analysis_specs/spec_helper.rb",
    "spec/analysis_specs/visitor_spec.rb",
    "spec/annotation_parser_specs/annotations_parser_spec.rb",
    "spec/annotation_parser_specs/class_annotation_parser_spec.rb",
    "spec/annotation_parser_specs/parsers_spec.rb",
    "spec/annotation_parser_specs/spec_helper.rb",
    "spec/annotation_parser_specs/structural_parser_spec.rb",
    "spec/laser_spec.rb",
    "spec/rake_specs/spec_helper.rb",
    "spec/rake_specs/task_spec.rb",
    "spec/runner_spec.rb",
    "spec/scanner_spec.rb",
    "spec/spec_helper.rb",
    "spec/standard_library/exceptions_spec.rb",
    "spec/standard_library/globals_spec.rb",
    "spec/standard_library/set_spec.rb",
    "spec/standard_library/spec_helper.rb",
    "spec/standard_library/standard_library_spec.rb",
    "spec/support_specs/acts_as_struct_spec.rb",
    "spec/support_specs/module_extensions_spec.rb",
    "spec/support_specs/spec_helper.rb",
    "spec/type_specs/spec_helper.rb",
    "spec/type_specs/types_spec.rb",
    "spec/warning_spec.rb",
    "spec/warning_specs/assignment_in_condition_spec.rb",
    "spec/warning_specs/comment_spacing_spec.rb",
    "spec/warning_specs/extra_blank_lines_spec.rb",
    "spec/warning_specs/extra_whitespace_spec.rb",
    "spec/warning_specs/line_length_spec.rb",
    "spec/warning_specs/misaligned_unindentation_spec.rb",
    "spec/warning_specs/operator_spacing_spec.rb",
    "spec/warning_specs/parens_on_declaration_spec.rb",
    "spec/warning_specs/rescue_exception_spec.rb",
    "spec/warning_specs/semicolon_spec.rb",
    "spec/warning_specs/spec_helper.rb",
    "spec/warning_specs/useless_double_quotes_spec.rb",
    "test/third_party_tests/rgl_tests/TestComponents.rb",
    "test/third_party_tests/rgl_tests/TestCycles.rb",
    "test/third_party_tests/rgl_tests/TestDirectedGraph.rb",
    "test/third_party_tests/rgl_tests/TestDot.rb",
    "test/third_party_tests/rgl_tests/TestEdge.rb",
    "test/third_party_tests/rgl_tests/TestGraph.rb",
    "test/third_party_tests/rgl_tests/TestGraphXML.rb",
    "test/third_party_tests/rgl_tests/TestImplicit.rb",
    "test/third_party_tests/rgl_tests/TestRdot.rb",
    "test/third_party_tests/rgl_tests/TestTransitivity.rb",
    "test/third_party_tests/rgl_tests/TestTraversal.rb",
    "test/third_party_tests/rgl_tests/TestUnDirectedGraph.rb",
    "test/third_party_tests/rgl_tests/test_helper.rb",
    "test/third_party_tests/test_inheritable_attributes.rb",
    "test/third_party_tests/test_stream.rb",
    "test/third_party_tests/test_trollop.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<laser>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_development_dependency(%q<metric_fu>, [">= 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0.3.9"])
      s.add_development_dependency(%q<simplecov-gem-adapter>, [">= 1.0.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_development_dependency(%q<metric_fu>, [">= 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0.3.9"])
      s.add_development_dependency(%q<simplecov-gem-adapter>, [">= 1.0.0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_runtime_dependency(%q<treetop>, ["~> 1.4"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_development_dependency(%q<metric_fu>, [">= 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0.3.9"])
      s.add_development_dependency(%q<simplecov-gem-adapter>, [">= 1.0.0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<laser>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.3"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_dependency(%q<metric_fu>, [">= 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0.3.9"])
      s.add_dependency(%q<simplecov-gem-adapter>, [">= 1.0.0"])
      s.add_dependency(%q<rspec>, ["~> 2.3"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_dependency(%q<metric_fu>, [">= 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0.3.9"])
      s.add_dependency(%q<simplecov-gem-adapter>, [">= 1.0.0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<treetop>, ["~> 1.4"])
      s.add_dependency(%q<rspec>, ["~> 2.3"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_dependency(%q<metric_fu>, [">= 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0.3.9"])
      s.add_dependency(%q<simplecov-gem-adapter>, [">= 1.0.0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<laser>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.3"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0.10.0"])
    s.add_dependency(%q<metric_fu>, [">= 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0.3.9"])
    s.add_dependency(%q<simplecov-gem-adapter>, [">= 1.0.0"])
    s.add_dependency(%q<rspec>, ["~> 2.3"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0.10.0"])
    s.add_dependency(%q<metric_fu>, [">= 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0.3.9"])
    s.add_dependency(%q<simplecov-gem-adapter>, [">= 1.0.0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<treetop>, ["~> 1.4"])
    s.add_dependency(%q<rspec>, ["~> 2.3"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0.10.0"])
    s.add_dependency(%q<metric_fu>, [">= 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0.3.9"])
    s.add_dependency(%q<simplecov-gem-adapter>, [">= 1.0.0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end

