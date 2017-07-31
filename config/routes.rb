Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html
  shallow do
    namespace(:clerk) do
      resources(:departments)
      resources(:referrals)
    end
  end
end
