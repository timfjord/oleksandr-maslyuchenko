# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title "MyString"
    year 1
    description "MyText"
    comments "MyText"
    file "MyString"
    journal nil
    journal_information "MyString"
  end
end
