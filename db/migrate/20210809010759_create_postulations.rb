class CreatePostulations < ActiveRecord::Migration[6.0]
  def change
    create_table :postulations do |t|
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
