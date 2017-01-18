FactoryGirl.define do
  factory :comment do
    message "MyString"
    post { FactoryGirl.create(:post) }

    factory :comment_without_post do
      post nil
    end
  end
end
