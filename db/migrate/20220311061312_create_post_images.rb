class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|

      t.integer :image_id
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      
    end
  end
end
