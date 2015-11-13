FactoryGirl.define do  factory :social_account do
    
  end

  sequence(:name) { Faker::Name.name }
  sequence(:name_jp) { Faker::Japanese::Name.name }
  sequence(:internet_name) { Faker::Internet.user_name }
  sequence(:avatar_image) { Faker::Avatar.image }
  sequence(:title) { Faker::Name.title }
  sequence(:say_something_smart) { Faker::Hacker.say_something_smart }
  sequence(:city) { Faker::Address.city }
  sequence(:internet_url) { Faker::Internet.url }
end
