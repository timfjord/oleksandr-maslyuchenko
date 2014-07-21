class Journal < ActiveRecord::Base
  has_many :articles

  validates :name, presence: true

  translates :name

  active_admin_translates :name do
    validates :name, presence: true
  end
end
