class TaskSerializer < ActiveModel::Serializer
  attributes :title, :description, :subtask, :due_date, :priority, :status, :tags, :completed
  has_one :user

  def completed
   object.completed ? "Completed": "Not Completed"
  end
end
