class AdjustTemplateTable < ActiveRecord::Migration
  def up
  	change_table :templates do |t|
  		t.string :name
  	end
  end
  def down
  	change_table :templates do |t|
  		t.remove :name
  	end
  end
end
