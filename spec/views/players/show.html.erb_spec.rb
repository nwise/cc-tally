require 'spec_helper'

describe "players/show.html.erb" do
  before(:each) do
    @player = assign(:player, stub_model(Player))
  end

  it "renders attributes in <p>" do
    render
  end
end
