class ChangingPartialsPathColumnFromHtml < ActiveRecord::Migration
  def change
    tables = [:about_sections, :catalogue_sections,:contact_us_sections,:footers,:home_sections,:nav_bars]

    tables.each do |table|
      rename_column table.to_sym ,:html,:path
    end

  end
end
