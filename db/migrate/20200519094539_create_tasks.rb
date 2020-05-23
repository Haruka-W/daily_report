class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      # t.integer :report_id, null: false
      t.integer :project_id, null: false
      t.string  :content, null: false, default: ""
      t.integer :progress_status, null: false, default: 0
      t.timestamps
    end
  end
end
