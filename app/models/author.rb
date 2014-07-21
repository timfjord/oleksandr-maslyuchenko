class Author < ActiveRecord::Base
  has_many :author_articles
  has_many :articles, through: :author_articles

  validates :first_name, :last_name, presence: true

  translates :first_name, :middle_name, :last_name

  active_admin_translates :name do
    validates :first_name, :last_name, presence: true
  end

  def name
    [first_name, middle_name, last_name].compact.join ' '
  end

  def short_name
    initials = [first_name, middle_name].compact.map { |n| "#{n[0]}." }
    (initials << last_name).join ' '
  end
end
