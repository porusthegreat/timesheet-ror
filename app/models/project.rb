class Project < ApplicationRecord
  has_many :tasks
  accepts_nested_attributes_for :tasks
  validates :title, presence: true
  validates :description, presence: true
  validates :status, presence: true
  validates :owner, presence: true
  validates :tech_stack, presence: true
  validates :github_link, presence: true
end
