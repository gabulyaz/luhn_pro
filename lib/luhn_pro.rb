module LuhnPro
	def self.getnum(number)
		#get number with checknumber
		return nil if number.empty?
		number+get_check_num(number)
	end

	def self.isvalid?(number)
		#true if number has correct checknumber
		return nil if number.empty?
		get_check_num(number[0..-2]) == number[-1] ? true : false
	end

	def self.get_check_num(number)
		#get check number for 'number' with Luhn method
		#nil if number is empty string
		return nil if number.empty?
		a=(number.gsub(/[^\d]/, "").split("").map {|i| i.to_i}).reverse
		#gsub - clean up number, delete not number characters
		#split - split to characters
		#map - make an array
		#to_i - convert each element to integer
		#reverse - reverse array for right order
		#...otherwise wrong result if numbers size is odd
		a.each_index {|i| a[i]= i%2==0 ? (a[i]*2>9?a[i]*2-10+1:a[i]*2):a[i]}
		#even indexes = same value
		#odds indexes = doubble value, more then 9 => e.g. ´12=1+2=>3´
		a.inject(:+)%10==0 ? 0.to_s : (10-a.inject(:+)%10).to_s
		#summarize values and mod 10, 0 if mod10 = 0, otherwise 10-mod10 
	end
end
