FactoryBot.define do
  factory :tutoring_session do
    start_time { DateTime.now }
    end_time { DateTime.now + 1.hour }
    status { "scheduled" }
    video_conference_link { "http://example.com/meeting" }
    association :student, factory: :user
    association :tutor, factory: [:user, :tutor]
  end
end
