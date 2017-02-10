class User < ActiveRecord::Base
  validates :user_name, unique: true, presence: true

  has_many :authored_polls,
    primary_key: :id,
    foreign_key: :author_id,
    class: :Poll

  has_many :responses,
    primary_key: :id,
    foreign_key: :user_id,
    class: :Response

end
