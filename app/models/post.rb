class Post < ActiveRecord::Base

  validates :blurb, :length => { :in => 10..255 },
                    :format => { :with => /^\A[a-zA-Z\d ]+\z/,
                    :message => "Only letters allowed",
                    :multiline => true}
  validates :title, :body, :presence => true
end
