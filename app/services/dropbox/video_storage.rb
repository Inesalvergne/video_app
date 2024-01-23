module Dropbox
  class VideoStorage < ApplicationService
    def initialize
      @api_instance = DropboxApi::Client.new(ENV['DROPBOX_ACCESS_TOKEN'])
    end

    def get_video_metadata(file_path)
      @api_instance.get_metadata(file_path)
      rescue DropboxApi::Errors::BasicError => e
        raise "Error fetching metadata from Dropbox: #{e.message}"
      end
    end
  end
