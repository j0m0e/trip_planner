class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
    	t.string :name
    	t.string :location
    	t.date :start_date
    	t.date :end_date
    	t.references :user
    end
  end
end
