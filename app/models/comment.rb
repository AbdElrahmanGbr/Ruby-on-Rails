class Comment < ApplicationRecord
  include Visible
  belongs_to :user
  belongs_to :article
end