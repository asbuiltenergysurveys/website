class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :summary
      t.text :body

      t.timestamps null: false
    end
  end
end
