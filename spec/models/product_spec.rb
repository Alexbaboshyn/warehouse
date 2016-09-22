require 'rails_helper'

RSpec.describe Product, type: :model do

  it { should have_many(:storage_items) }

  it { should have_many(:warehouses).through(:storage_items) }

  it { should have_many(:line_items) }

end
