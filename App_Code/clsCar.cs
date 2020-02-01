using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsCar
/// </summary>
public class clsCar
{
    //declare interger pmCarNo private member variable to store primary key
    private Int32 pmCarNo;
    //declare the public property function for CarNo
    public Int32 CarNo
    {
        get
        {
            return pmCarNo;
        }
        set
        {
            pmCarNo = value;
        }
    }
    //declare string pmCarName private member variable to store car name
    private string pmCarName;
    //declare the public property function to store car name
    public string CarName
    {
        get
        {
            return pmCarName;
        }
        set
        {
            pmCarName = value;
        }
    }
    //declare string pmCarImage private member variable to store image name
    private string pmCarImage;
    //declare the public property function to store image name
    public string CarImage
    {
        get
        {
            return pmCarImage;
        }
        set
        {
            pmCarImage = value;
        }
    }

    //function to retrieve car based on car number as input
    public Boolean FindCar(Int32 CarNoIn)
    {

        //create an array list of Cars
        List<clsCar> aCarList = new List<clsCar>();

        //create an instance of a car
        clsCar someCar = new clsCar();
        someCar.CarNo = 1;
        someCar.CarName = "Bugatti Veyron";
        someCar.CarImage = "Bugatti Veyron.jpeg";

        //add the car to the array list
        aCarList.Add(someCar);
        //create another car
        someCar = new clsCar();
        someCar.CarNo = 2;
        someCar.CarName = "Lamborghini Aventador";
        someCar.CarImage = "Lamborghini Aventador.jpeg";
        //add the car to the array list
        aCarList.Add(someCar);

        //create another car
        someCar = new clsCar();
        someCar.CarNo = 3;
        someCar.CarName = "Aston Martin";
        someCar.CarImage = "Aston Martin.jpeg";
        //add it to the array list
        aCarList.Add(someCar);
        //is the value to find between 1 and 3
        if (CarNoIn >= 1 & CarNoIn <= 3)
        {
            //subtract 1 off the primary key so that it maps to the index of the array
            CarNoIn--;
            //copy the data from the array list to the private memeber variables
            pmCarNo = aCarList[CarNoIn].CarNo;
            pmCarName = aCarList[CarNoIn].CarName;
            pmCarImage = aCarList[CarNoIn].CarImage;
            //return true, i.e. record found
            return true;
        }
        else
        {
            //return false i.e. record not found
            return false;
        }
    }

}