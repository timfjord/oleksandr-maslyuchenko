class TranslateJournals < ActiveRecord::Migration
  def up
    Journal.create_translation_table! name: :text
  end

  def down
    Journal.drop_translation_table!
  end
end
