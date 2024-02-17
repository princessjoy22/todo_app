class AddCompletedTaskToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :completed_task, :string
  end
end
