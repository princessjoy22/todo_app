class RenameNameToTaskName < ActiveRecord::Migration[7.1]
  def change
    rename_column :tasks, :name, :task_name
  end
end
