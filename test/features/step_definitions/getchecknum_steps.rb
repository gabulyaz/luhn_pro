Given(/^the input "(\d+)"$/) do |input|
	@number = input.to_s
end

When(/^the method runs$/) do
	output = LuhnPro.get_check_num(@number).to_i
end

Then(/^the output should be "(\d)"$/) do |output|
end