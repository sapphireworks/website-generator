class CreateCatalogueSections < ActiveRecord::Migration
  def change
    create_table :catalogue_sections do |t|
    	t.string :html
    	t.references :templates
      t.timestamps null: false
    end
  end
end
