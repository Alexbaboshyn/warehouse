require 'rails_helper'

RSpec.describe Api::OrdersController, type: :controller do

  it { should route(:post, 'api/order').to(action: :create) }


  describe '#create.json' do

    let(:params) { { order: { product_id: '1', quantity: '1'} } }

    let(:object) { stub_model Order }

    before { expect(Order).to receive(:new)
                              .with(permit!(product_id: '1', quantity: '1'))
                              .and_return(object) }

    before { expect(object).to receive(:save!) }

    before { post :create, params: params, format: :json }

    it { expect(response).to have_http_status(:created) }

  end



end
