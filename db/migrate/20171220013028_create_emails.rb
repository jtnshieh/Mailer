class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :subject, null: false
      t.string :body, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :emails, :user_id
  end
end
