require 'spec_helper'

describe "guestbook_entries/new" do
  before(:each) do
    assign(:guestbook_entry, stub_model(GuestbookEntry,
      :content => "MyText",
      :name => "MyString",
      :email => "MyString",
      :status => 1
    ).as_new_record)
  end

  it "renders new guestbook_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guestbook_entries_path, "post" do
      assert_select "textarea#guestbook_entry_content[name=?]", "guestbook_entry[content]"
      assert_select "input#guestbook_entry_name[name=?]", "guestbook_entry[name]"
      assert_select "input#guestbook_entry_email[name=?]", "guestbook_entry[email]"
      assert_select "input#guestbook_entry_status[name=?]", "guestbook_entry[status]"
    end
  end
end
