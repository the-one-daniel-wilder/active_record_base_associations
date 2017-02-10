class Question < ActiveRecord::Base
  validates :poll_id, unique: true, presence: true
  validates :text, presence: true

  belongs_to :poll,
    class: :Poll,
    primary_key: :id,
    foreign_key: :poll_id

  has_many :answer_choices,
    primary_key: :id,
    foreign_key: :question_id,
    class: :AnswerChoice

end
