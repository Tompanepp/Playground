#include <iostream>
using namespace std;
//Calculate stock cost paid for shares,broker commission and 
//total amount paid by the buyer+

int main()
{
    
    
    double amountOfShares;
    double pricePerShare;
    double brokerCommissionPercentage;
    
    
    
    double stockCost;
    double brokerCommission;
    double totalAmountPaid;
    
    amountOfShares = 600;
    pricePerShare = 21.77;
    brokerCommissionPercentage = 2;
    
    
    //Amout paid
    stockCost = amountOfShares * pricePerShare;
    //broker commission
    brokerCommission = (brokerCommissionPercentage/100) * stockCost;
    //Total amount
    totalAmountPaid = stockCost + brokerCommission;
    
    cout << "Stock cost :$ " <<stockCost<<endl
         << "Broker commission :$ "<< brokerCommission<<endl
         << "Total amount :$ "<< totalAmountPaid;
         system("Pause");
    
}
