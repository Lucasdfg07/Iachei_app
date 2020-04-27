class CreateEstablishments < ActiveRecord::Migration[5.0]
  def change
    create_table :establishments do |t|
    	t.belongs_to :user
      t.belongs_to :sub_category
    	t.string :name, null: false, unique: true
    	t.string :description, null: false
    	t.string :additional_information
    	t.string :rating, array: true, default: []
    	t.string :telephone
    	t.string :photo
      t.string :facebook
      t.string :instagram
      t.string :whatsapp
      t.string :website
      t.timestamps
    end
  end
end
