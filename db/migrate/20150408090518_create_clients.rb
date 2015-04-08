class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :username
    	t.references :templates
        t.timestamps null: false
    end
  end
end
