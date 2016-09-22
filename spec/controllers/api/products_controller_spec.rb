require 'rails_helper'

describe Api::ProductsController do
  it { should route(:get, '/api/products').to(action: :index) }
end

RSpec.describe Api::ProductsController, type: :controller do
describe '#index.json' do
  before { get :index, format: :json }

  it { should render_template :index }
end

describe '#collection' do
  let(:params) { { page: 5 } }

  before { expect(subject).to receive(:params).and_return(params) }

  before do
    expect(Product).to receive(:page).with(5) do
      double.tap { |a| expect(a).to receive(:per).with(5) }
    end
  end

  it { expect { subject.send :collection }.to_not raise_error }
end

end
