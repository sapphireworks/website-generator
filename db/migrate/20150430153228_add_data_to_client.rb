class AddDataToClient < ActiveRecord::Migration
  def change
    add_column :clients, :data, :string
  end
end
