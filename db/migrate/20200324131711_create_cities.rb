class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
    	t.string :name, null: false, unique: true
    	t.string :description, null: false
    	t.string :photo
        t.timestamps
    end
  end
end
