require('rails_helper')

RSpec.describe(Department) do
  subject { build_stubbed(:department) }

  describe('columns') do
    it do
      is_expected.to have_db_column(:name)
        .of_type(:string)
        .with_options(null: false)
    end
  end

  describe('indexes') do
    it { is_expected.to have_db_index(:name).unique }
  end

  describe('validations') do
    it { is_expected.to validate_presence_of(:name) }

    context('requires a saved record') do
      before { create(:department) }

      it { is_expected.to validate_uniqueness_of(:name) }
    end
  end
end
