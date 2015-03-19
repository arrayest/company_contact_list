module CompanyContact
	class API < Grape::API
		prefix :api
		format :json

		resource :contacts do
			# Get a list of all contacts
			get do
				Contact.all
			end
			# Get specified contact
			get ":contact" do
				@contacts = Contact.where("name LIKE ?", "%#{params[:contact]}%") 
				@contacts
			end
		end

		resource :phones do
			# Get a list of all phones
			get do
				Phone.all
			end
			# Query specified phone
			get ":phone" do
				@phones = Phone.where("phone_number LIKE ?", "%#{params[:phone]}%")
				@phones
			end
		end

		resource :companies do
			# Get a list of all companies
			get do
				Company.all
			end
			# Query specified company
			get ":company" do
				@companies = Company.where("name LIKE ?", "%#{params[:company]}%")
				@companies
			end
		end

	end
end
