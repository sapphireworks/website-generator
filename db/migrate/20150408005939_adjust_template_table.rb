class AdjustTemplateTable < ActiveRecord::Migration
  def up
  	add_column :templates, :name , :string
  end
  def down
  	change_table :templates do |t|
  		t.remove :name
  	end
  end
end
