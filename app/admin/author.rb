ActiveAdmin.register Author do
  config.sort_order = "last_name_asc"

  menu priority: 2

  index do
    column :first_name
    column :middle_name
    column :last_name

    translation_status
    actions
  end

  show do |author|
    attributes_table do
      row :first_name
      row :middle_name
      row :last_name
    end
  end

  form do |f|
    f.inputs 'Author details' do
      f.translated_inputs do |t|
        t.input :first_name
        t.input :middle_name
        t.input :last_name
      end
    end

    f.actions
  end
end
