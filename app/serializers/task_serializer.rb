class TaskSerializer < ActiveModel::Serializer
  attributes :id,:title, :due_by,:assign_to,:description,:email,:note_at
end
