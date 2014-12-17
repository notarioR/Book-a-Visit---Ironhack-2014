class Event < ActiveRecord::Base
	validates :date, presence: true

	mount_uploader :image, EventUploader
end
