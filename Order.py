class Order:
	
	
	def __init__(self, person_breakfast, person_lunch, person_dinner): # initialize

		self.person_breakfast = person_breakfast
		self.person_lunch = person_lunch
		self.person_dinner = person_dinner

	@classmethod	
	def morning(self): # class method

		person_breakfast = input("Enter breakfast for the morning ")
		person_lunch = input("Enter lunch for the afternoon ")
		person_dinner = input("Enter dinner for the evening ")
		
		return "Your breakfast is - ", person_breakfast,"Your lunch will be - ", person_lunch,"And your dinner is - ", person_dinner


if __name__ == "__main__": # main

	main_obj = Order.morning() # print(main_obj) --> print return value as it is 
	
	print(*(main_obj)) # print without bracket	
