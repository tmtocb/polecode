module Articles
	module Entities
		class Article
			delegate :title, :short_desc, :full_desc, to: :@article

			def initialize(article)
				@article = article
			end
		end
	end
end
