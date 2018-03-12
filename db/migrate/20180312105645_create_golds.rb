class CreateGolds < ActiveRecord::Migration
  def change
    create_table :golds do |t|
      t.string :title
      t.string :date
      t.string :closed
      t.string :high
      t.string :low
      t.string :variance
      t.string :variance_per
      t.string :hours

      t.timestamps null: false
    end
  end
end
