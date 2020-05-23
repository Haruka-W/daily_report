class Project < ApplicationRecord
	belongs_to :place
	has_many :tasks

	# 進捗ステータス
	enum status: {
		未着手: 0,
		施行中: 1,
		完了済み: 2
	}

end
