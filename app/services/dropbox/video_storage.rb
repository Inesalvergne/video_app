require 'dropbox-sdk-v2'

module Dropbox
  class VideoStorage < ApplicationService
    def initialize
      @api_instance = Dropbox::Client.new(ENV["DROPBOX_ACCESS_TOKEN"])
    end

    def get_video_metadata
      file_path = "/Video_test/le_wagon.mp4"

      begin
        metadata = @api_instance.get_metadata(file_path)
      rescue Dropbox::ApiError => e
        puts "Error fetching metadata from Dropbox: #{e.message}"
      end
    end
  end
end
