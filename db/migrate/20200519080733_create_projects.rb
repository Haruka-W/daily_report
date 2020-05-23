class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :place_id, null: false
      t.string  :name, null: false, default: ""
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
