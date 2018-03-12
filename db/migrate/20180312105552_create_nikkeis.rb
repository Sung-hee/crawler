class CreateNikkeis < ActiveRecord::Migration
  def change
    create_table :nikkeis do |t|
      t.string :title
      t.string :current
      t.string :high
      t.string :low
      t.string :variance
      t.string :variance_per
      t.string :hours

      t.timestamps null: false
    end
  end
end
