class AddDropboxPathToVideos < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :dropbox_path, :string
  end
end
