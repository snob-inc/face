User.create(
  name: 'guest',
  email: 's0rq3.vb@gmail.com',
  password: 'password123',
  password_confirmation: 'password123'
)

[
  'サイトのURL',
  'サイトのジャンル',
  '料理のジャンル'
].each do |content|
  BreadcrumbMaster.create(
    { content: content }
  )
end

[
  '企業のSEO担当者向け',
  '飲食店のオーナー向け'
].each do |name|
  BreadcrumbCategory.create(
    { name: name }
  )
end

[
  [1, 1],
  [2, 1],
  [1, 2],
  [2, 2],
  [3, 2]
].each do |breadcrumb_master, breadcrumb_category|
  BreadcrumbMastersCategory.create(
    { breadcrumb_master_id: breadcrumb_master, breadcrumb_category_id: breadcrumb_category }
  )
end