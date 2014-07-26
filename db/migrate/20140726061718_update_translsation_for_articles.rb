class UpdateTranslsationForArticles < ActiveRecord::Migration
  def up
    Article.drop_translation_table!
    Article.create_translation_table!(
      title: :string,
      abstract: :text,
      keywords: :text,
      reference: :text,
      pages: :string
    )
  end

  def down
    Article.drop_translation_table!
    Article.create_translation_table! title: :string, description: :text, comments: :text
  end
end
