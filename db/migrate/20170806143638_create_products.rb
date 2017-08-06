class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :color
      t.boolean :status
      t.date :inward_date
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
