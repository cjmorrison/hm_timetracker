class CreateClockEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :clock_events do |t|
      t.occuranceTime:string
      t.eventType:string
      t.belongs_to: clockUser
      t.timestamps
    end
  end
end
