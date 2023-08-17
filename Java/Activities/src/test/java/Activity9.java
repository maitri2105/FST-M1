//package test.java;

import java.util.ArrayList;

public class Activity9 {
    public static void main(String[] args) {
        //Create an ArrayList named myList of type String.
        ArrayList<String> myList = new ArrayList<String>();

        //Add 5 names to the ArrayList using add() method.
        myList.add("John");
        myList.add("Jimmy");
        myList.add("Belly");
        myList.add("Michel");
        myList.add("Teddy");
        System.out.println("Names are:");

        //Then print all the names using for loop.
        for (int i = 0; i < myList.size();i++)
        {
            System.out.println(myList.get(i));
        }
        //Then use get() method to retrieve the 3rd name in the ArrayList.
        System.out.println("the element at index 3 is "
                + myList.get(2));

        //Use contains() method to check if a name exists in the ArrayList.
        String str = "John";
        boolean ans = myList.contains(str);
        if (ans)
            System.out.println("The list contains "+str);
        else
            System.out.println("The list does not contains "+str);

        //Use size() method to print the number of names in the ArrayList.

        System.out.println("Size of the Array List is : "+myList.size());

        //Use remove() method to remove a name from the list and print the size() of the list again.
        myList.remove(2);
        System.out.println("Size of the Array List is : "+myList.size());
    }
}
