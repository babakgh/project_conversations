class CreateProjectStatusChanges < ActiveRecord::Migration[7.1]
  def change
    create_table :project_status_changes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.string :from_status
      t.string :to_status

      t.timestamps
    end
  end
end
