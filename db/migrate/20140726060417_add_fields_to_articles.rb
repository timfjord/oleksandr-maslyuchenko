class AddFieldsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :reference, :text
    add_column :articles, :pages, :string
    add_column :articles, :volume, :string
    add_column :articles, :issue, :string
    add_column :articles, :links, :text

    rename_column :articles, :description, :abstract
    rename_column :articles, :comments, :keywords

    remove_column :articles, :journal_information, :string
    remove_column :articles, :file, :string
  end
end
