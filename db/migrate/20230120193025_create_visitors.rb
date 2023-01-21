class CreateVisitors < ActiveRecord::Migration[5.1]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :cpf
      t.string :phone
      t.string :sector
      t.string :usersector
      t.string :attendant

      t.timestamps
    end
  end
end
