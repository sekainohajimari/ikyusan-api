FactoryGirl.define do
  factory :ask do
    content { generate(:say_something_smart) }

    trait :unset do
      category Ask.categories[:unset]
    end
  end
end
