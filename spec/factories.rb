FactoryGirl.define do
	factory :user do
		name "harry"
		email "harry@hogwarts.com"
		password "abcdef"
		password_confirmation "abcdef"
	end
end