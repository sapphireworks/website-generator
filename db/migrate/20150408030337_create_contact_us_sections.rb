class CreateContactUsSections < ActiveRecord::Migration
  def change
    create_table :contact_us_sections do |t|
    	t.string :name
    	t.string :html
    	t.references :templates
      t.timestamps null: false
    end
  end
end
