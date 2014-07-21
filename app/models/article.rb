class Article < ActiveRecord::Base
  has_many :author_articles
  has_many :authors, through: :author_articles
  belongs_to :journal

  validates :title, :year, presence: true
  validates :year, numericality: { only_integer: true, greater_than: 1977, less_than_or_equal_to: Time.now.year }

  translates :title, :description, :comments

  mount_uploader :file, PdfUploader

  active_admin_translates :title, :description, :comments do
    validates :title, presence: true
  end

  accepts_nested_attributes_for :authors, :journal
end
