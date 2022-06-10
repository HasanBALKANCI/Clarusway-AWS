
def print_menu():
    print('1. Find phone number')
    print('2. Insert a phone number')
    print('3. Delete a person from the phonebook')
    print('4. Quit')

numbers = {}
menu_choice = 0
print_menu()
while menu_choice != 4:
    menu_choice = int(input("Type in a number (1-4): "))
    if menu_choice == 1:
        x = input("The name whose phonenumber you want to learn:")
        for x in numbers.keys():
            print("Name: ", x, "\tNumber:", numbers[x])
        if x not in numbers.keys():
            print("Phone of", x, "couldn't find.")
    elif menu_choice == 2:
        print("Add Name and Number")
        name = input("Name: ")
        phone = input("Number: ")
        numbers[name] = phone
    elif menu_choice == 3:
        print("Remove Name and Number")
        name = input("Name: ")
        if name in numbers:
            del numbers[name]
            print(name, "was removed succesfully.")
        else:
            print(name, "was not found")
        
    elif menu_choice != 4:
        print_menu()
print("Thanks to use phonebook")
    

    