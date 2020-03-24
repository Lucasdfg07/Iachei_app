class CreateEstablishments < ActiveRecord::Migration[5.0]
  def change
    create_table :establishments do |t|
    	t.belongs_to :user
    	t.string :name, null: false, unique: true
    	t.string :description, null: false
    	t.string :additional_information
    	t.integer :rating
    	t.string :category, null: false
    	t.string :telephone
    	t.string :photo
      t.timestamps
    end
  end
end
