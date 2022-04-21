module Articles
  module Services
    class List
      def call
        all_articles.map do |article|
          article_structure(article)
        end
      end

      private

      def all_articles
        Article.all
      end

      def article_structure(article)
        article_entity = Entities::Article.new(article)

        {
          id: article_entity.id,
          title: article_entity.title,
          short_desc: article_entity.short_desc,
          full_desc: article_entity.full_desc
        }
      end
    end
  end
end
