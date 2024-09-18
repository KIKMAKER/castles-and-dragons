class AddImageToDragon < ActiveRecord::Migration[7.0]
  def change
    add_column :dragons, :image_url, :string
  end
end
