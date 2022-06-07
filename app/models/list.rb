class List < ApplicationRecord
    has_many :local_items, dependent: :destroy 
end
