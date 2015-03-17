company
name:string
rails g scaffold company name:string

department
name:string company:references parent_id:integer
rails g scaffold department name:string company:references parent_id:integer

contact
name:string company:references department:references
rails g scaffold contact name:string company:references department:references

phone
references:contact phone_number:string
rails g scaffold phone contact:references phone_number:string
