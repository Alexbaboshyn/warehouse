require 'rails_helper'

RSpec.describe Warehouse, type: :model do

  it { should have_many(:storage_items) }

  it { should have_many(:line_items) }

  it { should have_many(:products).through(:storage_items) }

  it { should validate_presence_of :email }

  it { should validate_uniqueness_of(:email).case_insensitive }

  it { should_not allow_value('test').for(:email) }

  it { should allow_value('test@test.com').for(:email) }

end
