//Converts Celsius to Fahrenheit
//Formula -> (C,celcius temp * (9/5)) + 32

#include <iostream>
#include <iomanip>

using namespace std;


int main()
{
    float minTemp,maxTemp,intervalSize,totalTemp,fahrenheitTemp;
    int const MIN = 0,MAX = 5000;
    
    cout << "Enter minimum temperature to begin at greater than 0: " << endl;
    cin >> minTemp;
    while(minTemp < MIN)
    {
     cout << "Minimum too low\n" <<"Enter minimum temperature value" <<endl;
     cin >> minTemp;
    }
    
    cout << "Enter maximum temperature to begin at less than or equal to 50000: " << endl;
    cin >> maxTemp; 
    while(maxTemp > MAX)
    {
      cout << "Maximum too hih\n" << "Enter maximum temperature value"<<endl;
      cin >> maxTemp;
    } 
   
    cout << "Enter interval temperature : " << endl;
    cin >> intervalSize;
    while(intervalSize > (maxTemp - minTemp))
    {
       cout << "interval size greater than acceptable difference" << endl;
       cout << "Enter interval temperature : " << endl;
       cin >> intervalSize;
    }
    //Ignoring the enter key
    cin.ignore();
    
    cout << "Celcius" <<setw(15)<<"Fahrenheit" << endl;
    cout <<"-------"<<setw(15)<<"----------"<<endl;
    //cout <<setfill('-')<<setw(7)<<endl;
         
    //Initializing the total temp
    totalTemp = minTemp;
   
    //Displays temperature incremented with intervalSize as long as totalTemp < maxTemp
    while(totalTemp < maxTemp)
    {
      //Conversion
      fahrenheitTemp = ( 1.8 * totalTemp )+ 32;//Couldn't use 9/8
      //Output result
       cout <<setprecision(5) <<fixed<<showpoint;
       cout <<totalTemp<<setw(13) <<fahrenheitTemp<<endl;
       totalTemp += intervalSize;
    }
    
    
    return 0;
    
} 
