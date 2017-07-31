require 'rails_helper'

RSpec.describe(Clerk::ReferralsController) do
  describe('routing') do
    it 'routes to #index' do
      expect(get: 'clerk/referrals').to route_to('clerk/referrals#index')
    end

    it 'routes to #new' do
      expect(get: 'clerk/referrals/new').to route_to('clerk/referrals#new')
    end

    it 'routes to #show' do
      expect(get: 'clerk/referrals/1')
        .to route_to('clerk/referrals#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: 'clerk/referrals/1/edit')
        .to route_to('clerk/referrals#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: 'clerk/referrals').to route_to('clerk/referrals#create')
    end

    it 'routes to #update via PUT' do
      expect(put: 'clerk/referrals/1')
        .to route_to('clerk/referrals#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: 'clerk/referrals/1')
        .to route_to('clerk/referrals#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: 'clerk/referrals/1')
        .to route_to('clerk/referrals#destroy', id: '1')
    end
  end
end
