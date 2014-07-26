ActiveAdmin.register Article do
  config.sort_order = 'updated_at_desc'

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
      row :authors do
        article.authors.map(&:name).join(', ')
      end
      row :abstract
      row :keywords
      row :reference
      row :pages
      row :volume
      row :issue
      row :year
      row :journal
      row :links
      row :documents do
        article.documents.map { |d| link_to d.name, d.file.url }.join(', ').html_safe
      end
    end
  end

  form do |f|
    f.inputs t('.article_details') do
      f.translated_inputs do |t|
        t.input :title
        t.input :abstract
        t.input :keywords
        t.input :reference
        t.input :pages
      end
      f.input :volume
      f.input :issue
      f.input :journal
      f.input :year
      f.input :authors
      f.input :links
      f.has_many :documents, heading: false, allow_destroy: true do |ff|
        ff.input :name
        ff.input :file, hint: (ff.object.file.url if ff.object.file?)
      end
    end

    f.actions
  end
end
