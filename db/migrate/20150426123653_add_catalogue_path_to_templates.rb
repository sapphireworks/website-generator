class AddCataloguePathToTemplates < ActiveRecord::Migration
  def change
    add_column :templates, :catalogue_path, :string
  end
end
