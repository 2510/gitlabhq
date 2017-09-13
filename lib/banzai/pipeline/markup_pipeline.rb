module Banzai
  module Pipeline
    class MarkupPipeline < BasePipeline
      def self.filters
        @filters ||= FilterArray[
          Filter::SanitizationFilter,
          Filter::ExternalLinkFilter,
          Filter::PlantumlFilter,
          Filter::MermaidFilter
        ]
      end
    end
  end
end
