class CreateSubCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_categories do |t|
      t.belongs_to :category
      t.string :name, null: false, unique: true
      t.string :photo
      t.timestamps
    end
  end
end
