class AddLikesCountToMeganes < ActiveRecord::Migration[5.1]
  def change
    add_column :meganes, :likes_count, :integer, default: 0
  end
end
