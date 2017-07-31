require('rails_helper')

RSpec.describe(Clerk::ReferralsController) do
  let(:valid_attributes) do
    attributes_for(:referral).merge(department_id: department)
  end
  let(:department) { create(:department) }

  let(:invalid_attributes) { { agenda_item_number: '' } }

  describe 'GET #index' do
    it 'returns a success response' do
      create(:referral)
      get(:index)
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      referral = create(:referral)
      get(:show, params: { id: referral })
      expect(response).to be_success
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get(:new)
      expect(response).to be_success
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      referral = create(:referral)
      get(:edit, params: { id: referral })
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new referral' do
        expect { post :create, params: { referral: valid_attributes } }
          .to change(Referral, :count).by(1)
      end

      it 'redirects to the referrals list' do
        post :create, params: { referral: valid_attributes }
        expect(response).to redirect_to(clerk_referrals_path)
      end
    end

    context 'with invalid params' do
      it 'returns a success response (i.e. to display the "new" template)' do
        post(:create, params: { referral: invalid_attributes })
        expect(response).to be_success
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) { attributes_for(:referral) }

      it 'updates the requested referral' do
        referral = create(:referral)
        put(:update, params: { id: referral, referral: new_attributes })
        expect(referral.reload).to have_attributes(new_attributes)
      end

      it 'redirects to the referrals list' do
        referral = create(:referral)
        put(:update, params: { id: referral, referral: new_attributes })
        expect(response).to redirect_to(clerk_referrals_path)
      end
    end

    context 'with invalid params' do
      it 'returns a success response (i.e. to display the "edit" template)' do
        referral = create(:referral)
        put(:update, params: { id: referral, referral: invalid_attributes })
        puts response.body
        expect(response).to be_success
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested referral' do
      referral = create(:referral)
      expect { delete(:destroy, params: { id: referral }) }
        .to change(Referral, :count).by(-1)
    end

    it 'redirects to the referrals list' do
      referral = create(:referral)
      delete(:destroy, params: { id: referral })
      expect(response).to redirect_to(clerk_referrals_url)
    end
  end
end
