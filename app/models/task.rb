class Task < ApplicationRecord
    validates :task_name, presence: true, unless: :completed?
end
