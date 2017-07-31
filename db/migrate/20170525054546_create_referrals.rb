class CreateReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :referrals do |t|
      t.integer(:referral_type, null: false)
      t.integer(:prioritization_year, null: false)
      t.date(:meeting_date, null: false)
      t.string(:agenda_item_number, null: false)
      t.string(:title, null: false)
      t.text(:recommendation, null: false)
      t.string(:sponsors, null: false)
      t.references(:department, foreign_key: true)
      t.text(:notes)
      t.date(:completed_on)
      t.integer(:first_year_rank)
      t.string(:tracking_number)
      t.date(:date_started)
      t.integer(:staff_time_required)
      t.integer(:cost)
      t.integer(:benefits)

      t.timestamps
    end
  end
end
