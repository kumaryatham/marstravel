class CreateTravellers < ActiveRecord::Migration
  def change
    create_table :travellers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    add_index :travellers, :email, unique: true
  end
end
