ActiveAdmin.register Journal do
  config.sort_order = "name_asc"

  menu priority: 4

  index do
    column :name

    translation_status
    actions
  end

  show do |author|
    attributes_table do
      row :name
    end
  end

  form do |f|
    f.inputs 'Journal details' do
      f.translated_inputs do |t|
        t.input :name
      end
    end

    f.actions
  end
end
