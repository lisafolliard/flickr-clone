require 'rails_helper'

describe Tag do
  it { should belong_to :tagged_user }
  it { should belong_to :tagged_photo }
end
