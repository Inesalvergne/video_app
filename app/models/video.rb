class Video < ApplicationRecord

  validates :dropbox_path, presence: true
  after_save :fetch_metadata

  def fetch_metadata
    dropbox_service = Dropbox::VideoStorage.new
    metadata = dropbox_service.get_video_metadata(self.dropbox_path)
  end
end
