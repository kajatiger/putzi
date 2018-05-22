class CreateFlatmates < ActiveRecord::Migration[5.1]
  def change
    create_table :flatmates do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
