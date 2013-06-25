require 'spec_helper'

describe "guestbook_entries/edit" do
  before(:each) do
    @guestbook_entry = assign(:guestbook_entry, stub_model(GuestbookEntry,
      :content => "MyText",
      :name => "MyString",
      :email => "MyString",
      :status => 1
    ))
  end

  it "renders the edit guestbook_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guestbook_entry_path(@guestbook_entry), "post" do
      assert_select "textarea#guestbook_entry_content[name=?]", "guestbook_entry[content]"
      assert_select "input#guestbook_entry_name[name=?]", "guestbook_entry[name]"
      assert_select "input#guestbook_entry_email[name=?]", "guestbook_entry[email]"
      assert_select "input#guestbook_entry_status[name=?]", "guestbook_entry[status]"
    end
  end
end
