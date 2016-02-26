class Task < ActiveRecord::Base
  enum status: [:pending, :inprocess, :done]

  belongs_to :user
end
