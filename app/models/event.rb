class Event < ApplicationRecord
#   belongs_to :venue,
#   class_name: "Venue",
#   foreign_key: "venue_id"
#
#   belongs_to :event_category,
#     class_name: "Event Category",
#     foreign_key: "event_category_id"
#
# scope :with_results, -> { includes(:venue, :event_category_id) }
end
