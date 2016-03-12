class BlogPost < ActiveRecord::Base
  belongs_to :Blog
  belongs_to :Individual
end
