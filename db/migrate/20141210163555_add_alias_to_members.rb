class AddAliasToMembers < ActiveRecord::Migration
  def change
    add_column :members, :alias, :string
  end
end
