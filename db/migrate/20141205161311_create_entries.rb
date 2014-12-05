class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :member_id, null: false
      t.text :body, null: false
      t.timestamps
    end

    add_index :entries, [:created_at], order: { created_at: :desc }
  end
end
