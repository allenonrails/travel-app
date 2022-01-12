class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.belongs_to :trip, null: false, foreign_key: true
      t.belongs_to :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
