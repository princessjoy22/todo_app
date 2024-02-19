class AddBodyToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :body, :string
  end
end
