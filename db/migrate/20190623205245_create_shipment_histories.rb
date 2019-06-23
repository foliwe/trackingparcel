class CreateShipmentHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :shipment_histories do |t|
      t.references :shipment, foreign_key: true
      t.string :location
      t.string :status
      t.text :remarks

      t.timestamps
    end
  end
end
