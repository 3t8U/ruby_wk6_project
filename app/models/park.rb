class Park < ApplicationRecord
  scope :search, -> (content_parameter) { where("content like ?", "%#{content_parameter}%")}
  scope :most_recent, -> { order(created_at: :desc).limit(1)}
end
