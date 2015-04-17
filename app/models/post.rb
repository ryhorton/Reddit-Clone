class Post < ActiveRecord::Base

  validates :title, :author_id, presence: true

  before_save :valid_url

  belongs_to :author, class_name: "User"


  def valid_url
    unless self.url[0..6] == 'http://'
      self.url.insert(0,"http://")
    end
  end

end
