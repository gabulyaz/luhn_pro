require 'spec_helper'
require 'luhn_pro'

describe LuhnPro do
	it "return with luhn number" do
		LuhnPro.get_check_num("991234").should == "6"
	end
	it "remove non number characters and return with luhn number too" do
		LuhnPro.get_check_num("5555-555").should == "1"
	end
	it "if empty string return nil" do
		LuhnPro.get_check_num("").should == nil
	end
	it "if empty string return nil" do
		LuhnPro.getnum("").should == nil
	end
	it "return with number and luhn number" do
		LuhnPro.getnum("1469048").should == "14690481"
	end
	it "if valid retur true" do
		LuhnPro.isvalid?("9752 2379 7337 3557").should == true
	end
end	