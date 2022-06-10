
namephone = {}

num = input("Welcome to the phonebook application.\
    Select operation on Phonebook App:\
    1. Find phone Number\
    2. Insert a phone number\
    3. Delete the person from the phone_book\
    4. Terminate")

while not num == 4:
    if num == 1:
        name = "Insert name of the person:"
        print("phone of", name, "is", namephone.get(name))
        if name not in namephone.key():
            print("Number of", name, "couldn't find.")
    if num == 2:
        name = "Insert :"
        print("phone of", name, "is", namephone.get(name))



    

    