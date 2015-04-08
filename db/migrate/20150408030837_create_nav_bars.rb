class CreateNavBars < ActiveRecord::Migration
  def change
    create_table :nav_bars do |t|
    	t.string name
    	t.string html
    	t.references :templates
      t.timestamps null: false
    end
  end
end
