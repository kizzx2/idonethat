class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :idle_days, null: false, default: 0

      t.timestamps
    end
  end
end
