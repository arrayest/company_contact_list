# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name: "263网络通信有限公司")
d = Department.create(name: "董事会", company_id: 1, parent_id: nil)
d1 = Department.create(name: "技术部", company_id: 1, parent_id: d.id)
Department.create(name: "运维部", company_id: 1, parent_id: d1.id)
Department.create(name: "测试部", company_id: 1, parent_id: d1.id)
Department.create(name: "运营部", company_id: 1, parent_id: d.id)
Department.create(name: "市场部", company_id: 1, parent_id: d.id)
Department.create(name: "销售部", company_id: 1, parent_id: d.id)
Department.create(name: "财务部", company_id: 1, parent_id: d.id)
100.times do |i|
	c = Contact.create(name: "Albert#{i}", company_id: 1, department_id: 1)
  Phone.create(contact_id: c.id, phone_number: (18075640000+i).to_s)
end
