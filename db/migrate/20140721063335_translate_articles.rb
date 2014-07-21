class TranslateArticles < ActiveRecord::Migration
  def up
    Article.create_translation_table! title: :string, description: :text, comments: :text
  end

  def down
    Article.drop_translation_table!
  end
end
