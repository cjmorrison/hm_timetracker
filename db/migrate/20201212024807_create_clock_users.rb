class CreateClockUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :clock_users do |t|
      t.string :username 
      t.string :password_digest
      t.string :salt
      t.string :firstName
      t.string :lastName
      t.string :role 
      t.references :ClockEvent
      t.timestamps
    end
  end
end
