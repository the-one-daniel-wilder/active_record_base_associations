class Response < ActiveRecord::Base
  validates :user_id, :question_id, unique: true, presence: true

  belongs_to :respondent,
    class: :User,
    primary_key: :id,
    foreign_key: :user_id

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :question_id,
    class: :AnswerChoice

  has_one :question555,
    through: :answer_choice,
    source: :question

end
