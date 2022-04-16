class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :short_desc, null: false
      t.string :full_desc, null: false
      t.datetime :published, null: false

      t.timestamps
    end
  end
end