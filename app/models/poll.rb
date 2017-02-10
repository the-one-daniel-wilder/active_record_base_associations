class Poll < ActiveRecord::Base
  validates :author_id, unique: true
  validates :title, presence: true

  belongs_to :author,
    class: :User,
    primary_key: :id,
    foreign_key: :author_id

  has_many :question_texts,
    primary_key: :id,
    class: :Question,
    foreign_key: :poll_id

end
