class Report < ApplicationRecord
	belongs_to :user
	belongs_to :place
	belongs_to :project
end
