require 'spec_helper'

describe "guestbook_entries/index" do
  before(:each) do
    assign(:guestbook_entries, [
      stub_model(GuestbookEntry,
        :content => "MyText",
        :name => "Name",
        :email => "Email",
        :status => 1
      ),
      stub_model(GuestbookEntry,
        :content => "MyText",
        :name => "Name",
        :email => "Email",
        :status => 1
      )
    ])
  end

  it "renders a list of guestbook_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
