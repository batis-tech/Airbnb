class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  AMENITIES = %w[pool Patio BBQ firepit pooltable gym tub]

end
