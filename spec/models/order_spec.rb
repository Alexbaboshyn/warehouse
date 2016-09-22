require 'rails_helper'

RSpec.describe Order, type: :model do

  it { should have_many(:line_items).dependent(:destroy) }

  it { should validate_presence_of :quantity }

  it { should validate_presence_of :product_id }

end
