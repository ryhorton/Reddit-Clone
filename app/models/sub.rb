class Sub < ActiveRecord::Base

  validates :title, :user_id, presence:true
  validates :title, uniqueness: true

  belongs_to :moderator,
    class_name: "User"

  

end
