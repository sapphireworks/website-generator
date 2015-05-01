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
  	remove_column :clients, :nav_bars_id
  	remove_column :clients, :home_sections_id
  	remove_column :clients, :about_sections_id
  	remove_column :clients, :catalogue_sections_id
  	remove_column :clients, :contact_us_sections_id
  end
end
