class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :body
      t.datetime :published_at
      t.decimal :price

      t.timestamps
    end
  end
end
