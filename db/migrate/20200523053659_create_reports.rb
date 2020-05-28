class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer  :user_id, null: false
      t.integer  :place_id, null: false
      t.integer  :project_id, null: false
      t.date     :work_date, null: false
      t.time     :work_time, null: false
      t.timestamps
    end
  end
end
