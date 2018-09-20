class CreateMeganes < ActiveRecord::Migration[5.1]
  def change
    create_table :meganes do |t|
      t.text :content
      t.string :picture
      t.integer :user_id

      t.timestamps
    end
  end
end
