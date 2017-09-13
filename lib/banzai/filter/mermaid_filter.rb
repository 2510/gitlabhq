module Banzai
  module Filter
    # Format mermaid.js style code block for client-side processing.
    #
    class MermaidFilter < HTML::Pipeline::Filter
      def call
        doc.css('pre > code[lang="mermaid"]').each do |node|
          node.parent.replace('<pre class="mermaid">' + node.content + '</pre>')
        end

        doc
      end
    end
  end
end
