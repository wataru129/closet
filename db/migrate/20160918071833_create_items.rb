class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer  :user_id

      t.timestamps
    end
  end
end
