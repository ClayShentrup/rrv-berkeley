FactoryGirl.define do
  factory(:department) do
    sequence(:name) { |n| "factory#{n}" }
  end
end
