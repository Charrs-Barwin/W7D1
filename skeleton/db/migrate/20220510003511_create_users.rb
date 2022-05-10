class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest
      t.string :session_token, null: false

      t.timestamps
    end
    add_index :username, :session_token
  end
end