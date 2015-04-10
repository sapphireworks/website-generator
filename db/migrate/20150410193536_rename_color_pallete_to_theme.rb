class RenameColorPalleteToTheme < ActiveRecord::Migration
  def up
  	x = [:nav_bars,:footers,:about_sections,:home_sections,:contact_us_sections,:catalogue_sections]
  	x.each do |m|
  		change_table m do |t|
  			t.remove :color_pallets_id
  		end 
  	end
  	
  	rename_table :color_pallets, :themes

  	x.each do |m|
  		change_table m do |t|
  			t.references :themes
  		end 
  	end
  	
  	
  end
  def down
  	x = [:nav_bars,:footers,:about_sections,:home_sections,:contact_us_sections,:catalogue_sections]
  	x.each do |m|
  		change_table m do |t|
  			t.remove :themes_id
  		end
  	end

  	rename_table :themes, :color_pallets

  	x.each do |m|
  		change_table m do |t|
  			t.references :color_pallets
  		end 
  	end
  end
end
