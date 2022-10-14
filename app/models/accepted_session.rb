class AcceptedSession < ApplicationRecord
  belongs_to :student
  belongs_to :parent
  belongs_to :teacher
end
