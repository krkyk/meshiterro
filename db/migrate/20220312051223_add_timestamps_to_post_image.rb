class AddTimestampsToPostImage < ActiveRecord::Migration[6.1]
  def change
    add_column :post_images, :timestamps, :timestamp
  end
end
