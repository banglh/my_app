require 'spec_helper'

describe "UserPages" do
  let(:base_title) {"My App"}
  
  subject { page }
  
  describe "signup page" do
    before {visit signup_path}
    it { should have_selector('title', text: "#{base_title} | Signup") }
    it { should have_selector('h1', text: "Signup") }
  end
end
