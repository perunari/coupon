class CreateSalecoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :salecoupons do |t|
      t.bigint :shop_id, type: :integer, foreign_key: true
      t.datetime :start, null: false
      t.datetime :end,null: false
      t.text :body
      t.timestamps
    end
  end
end
