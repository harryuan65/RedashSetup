class Post < ActiveRecord::Base
  belongs_to :user, dependent: :destroy, counter_cache: true
end