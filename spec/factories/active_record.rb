FactoryGirl.define do 

	factory :link do
		title 'Title'
		url 'www.google.com'
	end

	factory :user_params, class:Hash do
		username 'Name'
		email 'user@email.com'
		password 'password'
		password_confirmation 'password'
		initialize_with { attributes } 
	end

	factory :invalid_user_params, class:Hash do
		email 'things'
		password '6'
		initialize_with { attributes }
	end

	factory :user do
		username 'UserName'
		email 'example@email.com'
		password 'password'
		password_confirmation 'password'
	end

	factory :login_params, class:Hash do
		email 'example@email.com'
		password 'password'
		initialize_with { attributes }
	end

end