# == Schema Information
#
# Table name: notifications
#
#  id              :integer          not null, primary key
#  notifier_id     :integer
#  notifiable_type :string(64)
#  notifiable_id   :integer
#  title           :string(255)
#  body            :text(65535)
#  opened          :boolean          default(FALSE), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_notifications_on_notifiable   (notifiable_type,notifiable_id) UNIQUE
#  index_notifications_on_notifier_id  (notifier_id)
#

FactoryGirl.define do
  factory :notification do
    title { generate(:say_something_smart) }
    body { generate(:say_something_smart) }
    sequence(:notifiable_id) { |i| 1000 + i }
    opened { [true, false].sample }

    trait :like do
      notifiable_type Like.name
    end

    trait :invite do
      notifiable_type Invite.name
    end
  end
end
