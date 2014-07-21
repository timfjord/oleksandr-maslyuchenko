require 'spec_helper'

describe AuthorArticle, focus: true do
  it { should belong_to :author }
  it { should belong_to :article }
end
