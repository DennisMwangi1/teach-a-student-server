class RequestedSession < ApplicationRecord
  belongs_to :parent
  belongs_to :teacher
end
