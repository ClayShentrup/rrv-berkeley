class Referral < ApplicationRecord
  belongs_to(:department)

  enum(
    referral_type: { rrv: 0, short_term: 1, urgent: 2, commission: 3 }
  )

  validates(
    :agenda_item_number,
    :department,
    :meeting_date,
    :prioritization_year,
    :recommendation,
    :referral_type,
    :sponsors,
    :title,
    presence: true
  )
  validates(
    :staff_time_required, :cost, :benefits,
    allow_nil: true,
    inclusion: { in: 1..5 }
  )

  delegate(:name, to: :department, prefix: true)
end
