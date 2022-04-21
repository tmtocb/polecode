class AddPublishedAtOnArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :published
    add_column :articles, :published, :boolean
    add_column :articles, :published_at, :datetime
  end
end
