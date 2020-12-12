class CreateClockUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :clock_users do |t|
      t.userId:string 
      t.password :encrypted_password 
      t.salt :salt
      t.firstName: string
      t.lastName: string
      t.role:string 
      t.has_many: clockEvent
      t.timestamps
    end
  end
end
