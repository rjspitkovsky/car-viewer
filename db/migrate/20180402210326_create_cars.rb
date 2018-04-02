class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :manufacturer
      t.string :condition
      t.integer :value
      t.integer :year
      t.integer :user_id
    end 
  end
end
