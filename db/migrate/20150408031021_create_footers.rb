class CreateFooters < ActiveRecord::Migration
  def change
    create_table :footers do |t|
    	t.string :name
    	t.string :html
    	t.references :templates
      t.timestamps null: false
    end
  end
end
