require 'spec_helper'

describe "guestbook_entries/show" do
  before(:each) do
    @guestbook_entry = assign(:guestbook_entry, stub_model(GuestbookEntry,
      :content => "MyText",
      :name => "Name",
      :email => "Email",
      :status => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/1/)
  end
end
