class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :tel
      t.string :email
      t.string :post_code
      t.timestamps null: false
    end
  end
end
