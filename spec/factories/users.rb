FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    role { "student" }

    trait :tutor do
      role { "tutor" }
    end
  end
end
