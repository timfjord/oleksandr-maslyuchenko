require 'spec_helper'

describe Document do
  it { should belong_to :article }
  it { should validate_presence_of :name }
  it { should validate_presence_of :file }
end
