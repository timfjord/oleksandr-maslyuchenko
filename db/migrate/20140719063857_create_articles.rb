class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :year
      t.text :description
      t.text :comments
      t.string :file
      t.belongs_to :journal, index: true
      t.string :journal_information

      t.timestamps
    end
  end
end
