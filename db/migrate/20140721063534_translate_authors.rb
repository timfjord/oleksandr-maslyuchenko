class TranslateAuthors < ActiveRecord::Migration
  def up
    Author.create_translation_table! first_name: :string, middle_name: :string, last_name: :string
  end

  def down
    Author.drop_translation_table!
  end
end
