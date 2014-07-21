class CreateAuthorArticles < ActiveRecord::Migration
  def change
    create_table :author_articles do |t|
      t.belongs_to :author, index: true
      t.belongs_to :article, index: true

      t.timestamps
    end
  end
end
