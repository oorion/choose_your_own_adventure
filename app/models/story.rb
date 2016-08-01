class Story < ActiveRecord::Base
  belongs_to :parent_story
  has_many :stories, class_name: "Story", foreign_key: "story_id"
end
