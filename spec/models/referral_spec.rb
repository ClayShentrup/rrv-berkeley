require 'rails_helper'

RSpec.describe(Referral) do
  subject { build_stubbed(:referral) }

  describe('columns') do
    it do
      is_expected.to have_db_column(:referral_type)
        .of_type(:integer)
        .with_options(null: false)
    end

    it do
      is_expected.to have_db_column(:prioritization_year)
        .of_type(:integer)
        .with_options(null: false)
    end

    it do
      is_expected.to have_db_column(:meeting_date)
        .of_type(:date)
        .with_options(null: false)
    end

    it do
      is_expected.to have_db_column(:agenda_item_number)
        .of_type(:string)
        .with_options(null: false)
    end

    it do
      is_expected.to have_db_column(:title)
        .of_type(:string)
        .with_options(null: false)
    end

    it do
      is_expected.to have_db_column(:recommendation)
        .of_type(:text)
        .with_options(null: false)
    end

    it do
      is_expected.to have_db_column(:sponsors)
        .of_type(:string)
        .with_options(null: false)
    end

    it do
      is_expected.to have_db_column(:notes)
        .of_type(:text)
        .with_options(null: true)
    end

    it do
      is_expected.to have_db_column(:completed_on)
        .of_type(:date)
        .with_options(null: true)
    end

    context('RRV') do
      it do
        is_expected.to have_db_column(:first_year_rank)
          .of_type(:integer)
          .with_options(null: true)
      end

      it do
        is_expected.to have_db_column(:tracking_number)
          .of_type(:string)
          .with_options(null: true)
      end

      it do
        is_expected.to have_db_column(:date_started)
          .of_type(:date)
          .with_options(null: true)
      end

      it do
        is_expected.to have_db_column(:staff_time_required)
          .of_type(:integer)
          .with_options(null: true)
      end

      it do
        is_expected.to have_db_column(:cost)
          .of_type(:integer)
          .with_options(null: true)
      end

      it do
        is_expected.to have_db_column(:benefits)
          .of_type(:integer)
          .with_options(null: true)
      end
    end
  end

  it do
    is_expected.to define_enum_for(:referral_type).with(
      rrv: 0,
      short_term: 1,
      urgent: 2,
      commission: 3
    )
  end

  describe('associations') do
    it { is_expected.to belong_to(:department) }
  end

  describe('validations') do
    # https://github.com/thoughtbot/shoulda-matchers/issues/904
    # it do
    #   is_expected.to validate_inclusion_of(:staff_time_required)
    #                    .in_array((1..5).to_a)
    #   end
    #
    # it do
    #   is_expected.to validate_inclusion_of(:cost)
    #                    .in_array((1..5).to_a)
    #                    .allow_nil
    #   end
    #
    # it do
    #   is_expected.to validate_inclusion_of(:benefits)
    #                    .in_array((1..5).to_a)
    #                    .allow_nil
    # end

    it { is_expected.to validate_presence_of(:agenda_item_number) }
    it { is_expected.to validate_presence_of(:department) }
    it { is_expected.to validate_presence_of(:meeting_date) }
    it { is_expected.to validate_presence_of(:prioritization_year) }
    it { is_expected.to validate_presence_of(:recommendation) }
    it { is_expected.to validate_presence_of(:referral_type) }
    it { is_expected.to validate_presence_of(:sponsors) }
    it { is_expected.to validate_presence_of(:title) }
  end

  it { is_expected.to delegate_method(:name).to(:department).with_prefix }
end
