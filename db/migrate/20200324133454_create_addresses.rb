class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
    	t.belongs_to :establishment_city
    	t.string :street, null: false
    	t.string :neighborhood, null: false
    	t.integer :number, null: false
    	t.string :cep
      t.timestamps
    end
  end
end
