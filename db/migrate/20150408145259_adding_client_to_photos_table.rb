class AddingClientToPhotosTable < ActiveRecord::Migration
  def change
  	change_table :photos do |t|
  		t.references :client
  	end
  end
end
