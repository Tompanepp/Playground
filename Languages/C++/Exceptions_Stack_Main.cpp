
#include "Exceptions_Stack.h"
#include "Exceptions_Stack_Exceptions.h"


#include <iostream>
using namespace std;

int main() {
    Stack stk;
    stk.push(1);
    cout << stk.pop() << endl;
    return 0;

}
