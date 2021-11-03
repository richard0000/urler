require 'rails_helper'

RSpec.describe Link, type: :model do
  let(:link){ FactoryBot.create(:link) }
  it "validates the presence of the URL" do
    expect(link.url).not_to be_nil
  end

  it "automatically generates the slug" do
    expect(link.slug).not_to be_nil
    expect(link.slug).not_to be_empty
  end
end
