class CreateColorPallets < ActiveRecord::Migration
  def change
    create_table :color_pallets do |t|
    	t.string :name
    	t.references :templates
    	t.timestamps null: false
    end
  end
end
