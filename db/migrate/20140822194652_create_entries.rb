class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.text :body
      t.text :labels
      t.boolean :is_project
      t.boolean :is_paper

      t.timestamps
    end
  end
end
