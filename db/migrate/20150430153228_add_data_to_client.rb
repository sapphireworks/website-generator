class AddDataToClient < ActiveRecord::Migration
  def change
    add_column :clients, :data, :text
  end
end
