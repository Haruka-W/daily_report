class Place < ApplicationRecord
	has_many :projects
	has_many :reports
end
