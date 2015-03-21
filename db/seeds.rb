# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name: "263网络通信有限公司")
d0 = Department.create(name: "董事会", company_id: 1, parent_id: nil)
d1 = Department.create(name: "技术部", company_id: 1, parent_id: d0.id)
d2 = Department.create(name: "运维部", company_id: 1, parent_id: d1.id)
d3 = Department.create(name: "测试部", company_id: 1, parent_id: d1.id)
d4 = Department.create(name: "运营部", company_id: 1, parent_id: d0.id)
d5 = Department.create(name: "市场部", company_id: 1, parent_id: d0.id)
d6 = Department.create(name: "销售部", company_id: 1, parent_id: d0.id)
d7 = Department.create(name: "财务部", company_id: 1, parent_id: d0.id)

%w(Albert Bill Caroline Divid Eva Frank Gina Henry).each_with_index do |n, nid|
  10.times do |i|
    c = Contact.create(name: "#{n + i.to_s}", company_id: 1, department_id: eval("d#{nid}.id"))
    Phone.create(contact_id: c.id, phone_number: (18075600000 + nid * 10000 + i).to_s)
  end
end
