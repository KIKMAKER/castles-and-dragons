class AddImageToCastle < ActiveRecord::Migration[7.0]
  def change
    add_column :castles, :image_url, :string
  end
end
