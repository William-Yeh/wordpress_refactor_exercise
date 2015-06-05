# encoding: UTF-8

假如(/^存在用户 "(.*?)" 且他的密码是 "(.*?)"$/) do |username, password|
  @username = username
  create_user username, password
end

当(/^使用用户名 "(.*?)" 和密码 "(.*?)" 登录$/) do |username, password|
  login username, password
end

那么(/^能够成功登录$/) do
  expect(title).to eq("Dashboard ‹ Specification By Example Workshop — WordPress")
  delete_user @username
end

那么(/^会因为密码错误而登录失败$/) do
  expect(page).to have_content("ERROR: The password you entered for the username #{@username} is incorrect.")
  delete_user @username
end

那么(/^会因为没有填写密码而登录失败$/) do
  expect(page).to have_content("ERROR: The password field is empty.")
  delete_user @username
end

那么(/^会因为无效的用户名而登录失败$/) do
  expect(page).to have_content("ERROR: Invalid username.")
  delete_user @username
end
