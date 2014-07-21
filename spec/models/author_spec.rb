require 'spec_helper'

describe Author, focus: true do
  it { should have_many :author_articles }
  it { should have_many(:articles).through :author_articles }

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
end
