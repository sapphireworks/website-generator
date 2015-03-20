class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :template_path
      t.string :thumbnail_path

      t.timestamps null: false
    end
  end
end
