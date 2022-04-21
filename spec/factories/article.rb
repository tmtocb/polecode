FactoryBot.define do
  factory :article do
    title { 'Mateusz Podcast' }
    short_desc { 'This is Mateusz Podcast' }
    full_desc { 'Mateusz Podcast is a regular podcast we run' }

    trait :not_published do
      published { false }
      published_at { nil }
    end

    trait :published do
      published { true }
      published_at { Date.today }
    end
  end
end
