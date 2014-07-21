require 'spec_helper'

describe Article do
  it { should have_many :author_articles }
  it { should have_many(:authors).through :author_articles }
  it { should belong_to :journal }

  it { should validate_presence_of :title }
  it { should validate_presence_of :year }
  it do
    should validate_numericality_of(:year)
      .only_integer
      .is_greater_than(1977)
      .is_less_than_or_equal_to(Time.now.year)
  end
end
