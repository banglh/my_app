FactoryGirl.define do
	factory :user do
		sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"} 
		password "abcdef"
		password_confirmation "abcdef"
	end

	factory :admin do
      admin true
    end
end