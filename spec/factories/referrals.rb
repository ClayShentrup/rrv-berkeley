FactoryGirl.define do
  factory :referral do
    agenda_item_number('1b')
    benefits(1)
    cost(3)
    department
    meeting_date('2017-05-24'.to_date)
    prioritization_year(2017)
    recommendation('Upzone everything.')
    referral_type('rrv')
    sponsors('Barack Obama, Cory Booker')
    sequence(:title) { |n| "Really Good Item ##{n}" }
  end
end
