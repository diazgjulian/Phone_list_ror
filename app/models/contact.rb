class Contact < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :phone_number

  include PgSearch::Model
  pg_search_scope :global_search,
      against: [:last_name],
    using: {
      tsearch: { prefix: true }
  }
  
end
