class AdjustClientTable < ActiveRecord::Migration
  def up
  	change_table :clients do |t|
      t.references :nav_bars
      t.references :home_sections
      t.references :about_sections
      t.references :catalogue_sections
      t.references :contact_us_sections
    end
  end
  
  def down
  end
end
