numbers = []

for i in range(5):
    num = input("Enter a number so as to find the greatest :")
    numbers.append(num)
sort_numbers = sorted(numbers)
print("The greatest number of given is", sort_numbers[4])
