using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsCarCollection
/// </summary>
public class clsCarCollection
{


    public List<clsCar> CarList
    {
        get
        {
            //create an array list of Cars
            List<clsCar> CarList = new List<clsCar>();

            //create a first car
            clsCar someCar = new clsCar();
            //assign carNo property value of 1
            someCar.CarNo = 1;
            //assign CarName property the car name
            someCar.CarName = "Bugatti Veyron";
            //assign CarImage property the jpeg name 
            someCar.CarImage = "Bugatti Veyron.jpeg";
            //add the car to the array list
            CarList.Add(someCar);

            //create another instance of a car
            someCar = new clsCar();
            //assign carNo property value of 2
            someCar.CarNo = 2;
            //assign CarName property the car name
            someCar.CarName = "Lamborghini Aventador";
            //assign CarImage property the jpeg name 
            someCar.CarImage = "Lamborghini Aventador.jpeg";
            //add the car to the array list
            CarList.Add(someCar);

            //create another instance of a car
            someCar = new clsCar();
            //assign carNo property value of 3
            someCar.CarNo = 3;
            //assign CarName property the car name
            someCar.CarName = "Aston Martin";
            //assign CarImage property the jpeg name 
            someCar.CarImage = "Aston Martin.jpeg";
            //add it to the array list
            CarList.Add(someCar);
            //return the populated list
            return CarList;

        }
    }
    //public property class called Count
    public Int32 Count
    {
        //hard coded count property
        get
        {
            return 3;
        }
    }
}