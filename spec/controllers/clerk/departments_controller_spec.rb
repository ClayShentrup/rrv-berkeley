require('rails_helper')

RSpec.describe(Clerk::DepartmentsController) do
  let(:valid_attributes) { attributes_for(:department) }

  let(:invalid_attributes) { { name: '' } }

  describe 'GET #index' do
    it 'returns a success response' do
      create(:department)
      get(:index)
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      department = create(:department)
      get(:show, params: { id: department })
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
      department = create(:department)
      get(:edit, params: { id: department })
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Department' do
        expect { post :create, params: { department: valid_attributes } }
          .to change(Department, :count).by(1)
      end

      it 'redirects to the departments list' do
        post :create, params: { department: valid_attributes }
        expect(response).to redirect_to(clerk_departments_path)
      end
    end

    context 'with invalid params' do
      it 'returns a success response (i.e. to display the "new" template)' do
        post(:create, params: { department: invalid_attributes })
        expect(response).to be_success
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) { attributes_for(:department) }

      it 'updates the requested department' do
        department = create(:department)
        put(:update, params: { id: department, department: new_attributes })
        expect(department.reload).to have_attributes(new_attributes)
      end

      it 'redirects to the departments list' do
        department = create(:department)
        put(:update, params: { id: department, department: new_attributes })
        expect(response).to redirect_to(clerk_departments_path)
      end
    end

    context 'with invalid params' do
      it 'returns a success response (i.e. to display the "edit" template)' do
        department = create(:department)
        put(:update, params: { id: department, department: invalid_attributes })
        expect(response).to be_success
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested department' do
      department = create(:department)
      expect { delete(:destroy, params: { id: department }) }
        .to change(Department, :count).by(-1)
    end

    it 'redirects to the departments list' do
      department = create(:department)
      delete(:destroy, params: { id: department })
      expect(response).to redirect_to(clerk_departments_url)
    end
  end
end
