class Document < ActiveRecord::Base
  belongs_to :article

  validates :name, :file, presence: true

  mount_uploader :file
end
