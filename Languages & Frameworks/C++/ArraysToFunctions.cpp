//Praise P Tompane
//2012-June-24,12:33
//2D arrays to functions
//Trying to check if function works even though number of columns is
//send as only a size declarator of the number of colums in the array


#include <iostream>

using namespace std;

const int COLS = 2;//declare global to make accessible to all functions in use of the 2D array
void showArray(int [][COLS],int);
int sum(int [][COLS],int);
int main()
{
    const int ROWS = 3;
    int values[ROWS][COLS] = {{1,1},
                              {2,2},
                              {3,3}
                            };
    showArray(values,ROWS);
    cout << "The total is :" << sum(values,ROWS);
    //NB : If you want to sum the columns make the column loop the outer one
    //and if the rows,then do the opposite of the above

    //For char arrays the second dimension is the length of the string
    //The first dimension is the number of rows i.e the number of elements
    int lengthOfString = 10;
    int numberOfStudents = 5;
    char students[numberOfStudents][lengthOfString];
}

void showArray(int numbers[][COLS],int rows)
{
    for(int i = 0;i < rows;i++)
    {
        for(int j = 0;j < COLS;j++)
        {
            cout << numbers[i][j] << endl;
        }
    }
}
int sum(int numbers[][COLS],int rows)
{
    int total = 0;
    for(int i = 0;i < rows;i++)
    {
        for(int j = 0;j < COLS;j++)
        {
            total +=numbers[i][j];
        }
    }
    return total;
}
