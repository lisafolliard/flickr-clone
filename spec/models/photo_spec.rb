require 'rails_helper'

describe Photo do
  it { should belong_to :user }
  it { should have_many :tags }
  it { should have_many :tagged_users }
end
