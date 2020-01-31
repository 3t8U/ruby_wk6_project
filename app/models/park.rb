class Park < ApplicationRecord
  scope :search, -> (content_parameter) { where("content like ?", "%#{content_parameter}%")}
end
