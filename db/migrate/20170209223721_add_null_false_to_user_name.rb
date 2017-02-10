class AddNullFalseToUserName < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :user_name, :string, null: false
  end
end
