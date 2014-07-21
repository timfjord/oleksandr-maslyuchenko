require 'spec_helper'

describe Journal, focus: true do
  it { should have_many :articles }

  it { should validate_presence_of :name }
end
