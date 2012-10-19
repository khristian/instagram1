class Gettweet < ActiveRecord::Base
  attr_accessible :category, :date, :store_id, :tags, :tweet, :user_id
end
