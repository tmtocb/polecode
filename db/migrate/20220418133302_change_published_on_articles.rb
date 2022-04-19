class ChangePublishedOnArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :published
    add_column :articles, :published, :datetime
  end
end
