require 'rails_helper'

RSpec.describe Api::WarehousesController, type: :controller do
  it { should route(:get, 'api/warehouses').to(action: :index) }

  it { should route(:post, 'api/warehouses').to(action: :create) }

  it { should route(:get, 'api/warehouses/1').to(action: :show, id: 1 ) }

  describe '#create.json' do

    let(:params) { { warehouse: { email: 'bob@marley.com'} } }

    let(:object) { stub_model Warehouse }

    before { expect(Warehouse).to receive(:new)
                              .with(permit!(email: 'bob@marley.com'))
                              .and_return(object) }

    before { expect(object).to receive(:save!) }

    before { post :create, params: params, format: :json }

    it { expect(response).to have_http_status(:created) }

  end


  describe '#collection' do
    let(:params) { { page: 5 } }

    before { expect(subject).to receive(:params).and_return(params) }

    before do
      expect(Warehouse).to receive(:page).with(5) do
        double.tap { |a| expect(a).to receive(:per).with(5) }
      end
    end

    it { expect { subject.send :collection }.to_not raise_error }
  end
end
