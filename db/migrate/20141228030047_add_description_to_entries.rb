class AddDescriptionToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :description, :string
  end
end
