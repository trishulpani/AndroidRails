class CreateLeaveDetails < ActiveRecord::Migration
  def self.up
    create_table :leave_details do |t|
      t.string :fromdate
      t.string :todate
      t.string :leavetype
      t.string :contactinfo
      t.string :status
      t.string :empno

      t.timestamps
    end
  end

  def self.down
    drop_table :leave_details
  end
end
