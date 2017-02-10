class AnswerChoice < ActiveRecord::Base
  validates :text, presence: true
  validates :question_id, presence: true

  belongs_to :question555,
    primary_key: :id,
    foreign_key: :question_id,
    class: :Question

  has_many :responses,
    primary_key: :id,
    foreign_key: :user_id,
    class: :User
end
