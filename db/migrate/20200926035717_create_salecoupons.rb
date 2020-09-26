class CreateSalecoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :salecoupons do |t|
      t.references :shop, type: :integer, foreign_key: true
      t.integer :saleprice, null: false
      t.datetime :start, null: false
      t.datetime :end,null: false
      t.body :text
      t.timestamps
    end
  end
end
