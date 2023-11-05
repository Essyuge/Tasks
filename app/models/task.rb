class Task < ApplicationRecord
  validates :title, presence: true
  validates :user_id, presence: true

  belongs_to :user

    # Other validations as needed

  # Custom validation for the "status" attribute
  # validate :valid_status

  # private

  # # Custom validation method for "status"
  # def valid_status
  #   valid_statuses = [
  #     'To-Do', 'In Progress', 'Completed', 'Canceled', 'On Hold',
  #     'Deferred', 'Urgent', 'Flagged', 'Not Started', 'In Review'
  #   ]

  #   errors.add(:status, 'is not a valid status') unless valid_statuses.include?(status)
  # end
end
