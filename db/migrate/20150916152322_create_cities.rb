class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :code
      t.string :worldareacode
      t.string :country
      t.string :longitude
      t.string :latitude
      t.string :airport
      t.string :gmt

      t.timestamps null: false
    end
  end
end
