class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :subject, null: false
      t.string :body, null: false
      t.string :to_email_address, null: false
      t.timestamps
    end
  end
end
