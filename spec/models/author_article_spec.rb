require 'spec_helper'

describe AuthorArticle do
  it { should belong_to :author }
  it { should belong_to :article }
end
