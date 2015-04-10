class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.string :path
    end
  end
end
