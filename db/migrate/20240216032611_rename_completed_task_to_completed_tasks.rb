class RenameCompletedTaskToCompletedTasks < ActiveRecord::Migration[7.1]
  def change
    rename_column :tasks, :completed_task, :completed_tasks
  end
end
