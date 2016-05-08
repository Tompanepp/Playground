//Converging pointers data cleanup algorithm
//Praise P Tompane
//2012 - 01 - 21
//Exchanges zeros on the left with non-zero values on the right


using namespace std;

int main()
{
   int left = 0;
   int right = 9;//Initialised accordong to array counting(This id 10)
   int nList = {0,24,16,0,36,42,23,21,0,27};

   while(nList[left] == 0)
   {
       if(right != 0)
       {
           //Switching values
           int temp = nList[right];//Copying value at index right
           //Moving Zero at index Left to current position of index Right
           nList[right] = nList[left];
           nLiist[left] = temp;
           //Moving indexes
           right--;
           left++;

       }
       else
       left++;

       if(right == 0)
       {
           right--;//Moving One index left if value index right is Zero
       }
   }

}
