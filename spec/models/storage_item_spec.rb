require 'rails_helper'

RSpec.describe StorageItem, type: :model do

  it { should belong_to(:product) }

  it { should belong_to(:warehouse) }

end
