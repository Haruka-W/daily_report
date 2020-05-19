class Task < ApplicationRecord
	belongs_to :project

	# 進捗ステータス
	enum progress_status: {
		０％: 0,
		１０％: 1,
		２０％: 2,
		３０％: 3,
		４０％: 4,
		５０％: 5,
		６０％: 6,
		７０％: 7,
		８０％: 8,
		９０％: 9,
		１００％: 10
	}

end
