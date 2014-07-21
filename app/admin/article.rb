ActiveAdmin.register Article do
  config.sort_order = "title_asc"

  menu priority: 1

  index do
    column :title
    column :year

    translation_status
    actions
  end

  show do |article|
    attributes_table do
      row :title
      row :year
      row :description
      row :comments
      row :file
      row :journal
      row :journal_information
      row :authors do
        article.authors.map(&:name).join(', ')
      end
    end
  end

  form do |f|
    f.inputs t('.article_details') do
      f.translated_inputs do |t|
        t.input :title
        t.input :description
        t.input :comments
      end
      f.input :year
      f.input :file, as: :file
      f.input :authors
      f.input :journal
      f.input :journal_information
    end

    f.actions
  end
end
