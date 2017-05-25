require('rails_helper')

RSpec.describe(Department) do
  describe('columns') do
    it do
      is_expected.to have_db_column(:name)
        .of_type(:string)
        .with_options(null: false)
    end
  end

  describe('validations') do
    it { is_expected.to validate_presence_of(:name) }
  end
end
