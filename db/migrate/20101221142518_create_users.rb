class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :empno
      t.string :name
      t.integer :l_vacation
      t.integer :l_sick
      t.integer :l_comp
      t.integer :l_personal
      t.string :role

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
