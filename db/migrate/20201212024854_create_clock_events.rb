class CreateClockEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :clock_events do |t|
      t.string :occuranceTime
      t.string :eventType  
      t.timestamps
    end
  end
end
