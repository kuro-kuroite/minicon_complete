class AddUserNameToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table(:users) do |t|
      t.boolean :confirmable, :default => false
    end
  end
end
