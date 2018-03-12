class CreateSp500s < ActiveRecord::Migration
  def change
    create_table :sp500s do |t|
      t.string :title
      t.string :date
      t.string :current
      t.string :high
      t.string :low
      t.string :variancce
      t.string :variance_per
      t.string :hours

      t.timestamps null: false
    end
  end
end
