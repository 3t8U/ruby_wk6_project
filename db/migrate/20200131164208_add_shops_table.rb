class AddShopsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.column :name, :string
      t.column :location, :string
      t.column :description, :string
      t.timestamps
    end
  end
end
