class CreateHomeSections < ActiveRecord::Migration
  def change
    create_table :home_sections do |t|
    	t.string :name
    	t.string :html
    	t.references :templates
      t.timestamps null: false
    end
  end
end
