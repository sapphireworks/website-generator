class AddingPaletetoComponents < ActiveRecord::Migration
  def up
  	x = [:nav_bars,:footers,:about_sections,:home_sections,:contact_us_sections,:catalogue_sections]
  	x.each do |m|
  		change_table m do |t|
  			t.references :color_pallets
  		end 
  	end
  end
  def down
  	x = [:nav_bars,:footers,:about_sections,:home_sections,:contact_us_sections,:catalogue_sections]
  	x.each do |m|
  		change_table m do |t|
  			t.remove :color_pallets_id
  		end 
  	end
  end
end
