module Articles
  module Commands
    class Add
      def initialize(params)
        @params_hash = parse_params(params)
      end

      def call
        attributes = validate
        Article.create!(attributes)
      end

      private

      def parse_params(params)
        {
          title: params[:title],
          short_desc: params[:short_desc],
          full_desc: params[:full_desc],
          published: false,
          published_at: nil
        }
      end

      def validate
        Contracts::ApplicationContract.validate_with!(Articles::Commands::Validations::AddContract, params: @params_hash)
      end
    end
  end
end
