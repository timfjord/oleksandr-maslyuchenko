require 'spec_helper'

describe Author do
  it { should have_many :author_articles }
  it { should have_many(:articles).through :author_articles }

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }

  describe "#name" do
    let(:author) { build :author, first_name: 'Evee', middle_name: 'Val', last_name: 'Hol' }

    it "should generate name" do
      expect(author.name).to eql 'Evee Val Hol'
    end

    it "should reject nil and emply values" do
      author.middle_name = nil
      author.last_name = ''

      expect(author.name).to eql 'Evee'
    end
  end

  describe "#short_name" do
    let(:author) { build :author, first_name: 'Evee', middle_name: 'Val', last_name: 'Hol' }

    it "should generate initials with last name" do
      expect(author.short_name).to eql 'E. V. Hol'
    end

    it "should reject nil and emply values" do
      author.middle_name = nil

      expect(author.short_name).to eql 'E. Hol'
    end
  end
end
