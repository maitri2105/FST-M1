name1 = input("Enter the name for player 1 : ")
name2 = input("Enter the name for player 2 : ")

while True:
    choice1 = input("Enter the choice for {} : ".format(name1))
    choice2 = input("Enter the choice for {} : ".format(name2))

    if(choice1==choice2):
        print("It's a tie")
    elif(choice1 == "Rock" ):
        if(choice2 == "Paper"):
            print("{} wins".format(name2))
        else:
            print("{} wins".format(name1))
    elif(choice1 == "Paper"):
        if(choice2 == "Rock"):
            print("{} wins".format(name1))
        else:
            print("{} wins".format(name2))
    elif(choice1 == "Scissor"):
        if(choice2 == "Rock"):
            print("{} wins".format(name2))
        else:
            print("{} wins".format(name1))
    else:
        print("Invalid input. Please try again")

    response = input("Do you want to play again? Yes / No : ")
    if(response == "Yes"):
        pass
    elif(response == "No"):
        raise SystemExit
    else:
        print("You entered an invalid option. Exiting now.")
        raise SystemExit