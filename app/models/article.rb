class Article < ActiveRecord::Base
  I18N_FIELDS = [:title, :abstract, :keywords, :reference, :pages]

  has_many :documents
  has_many :author_articles
  has_many :authors, through: :author_articles
  belongs_to :journal

  validates :title, :year, :journal, presence: true
  validates :year, numericality: { only_integer: true, greater_than: 1977, less_than_or_equal_to: Time.now.year }

  translates *I18N_FIELDS

  active_admin_translates *I18N_FIELDS do
    validates :title, presence: true
    validates :pages, presence: true
  end

  accepts_nested_attributes_for :authors, :journal
  accepts_nested_attributes_for :documents, allow_destroy: true
end
