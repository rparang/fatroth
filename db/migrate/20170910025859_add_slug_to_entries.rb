class AddSlugToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :slug, :string, unique: true
  end
end
