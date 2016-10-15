#include<iostream>
#include<stack>
#include<string>

using namespace std;

/*
    Author: Praise Tompane
    Date: 22 May 2015
    Purpose: The purpose of this function is to validate if the parenthesis(i.e [],{},()) are balanced
    and in the correct order

*/
bool isProperlyNested(string code)
{
	stack<char>  openers;
	int codeLength = code.length();
    bool isBalanced = false;

	for(int i =0;i<codeLength;i++){
		if(code[i] == '(' || code[i] == '{' || code[i] == '[')
			openers.push(code[i]);
		else if(code[i] == ')' || code[i] == '}' || code[i] == ']'){
			if(!openers.empty()){
                openers.pop();
                char top = openers.top();
                if(top == '(' && code[i] == ')')isBalanced = true;
                else if(top == '{' && code[i] == '}')isBalanced = true;
                else if(top == '[' && code[i] == ']')isBalanced = true;
                else isBalanced = false;
            }
			else
				return false;
		}
    }

    (isBalanced == true && openers.empty()) ? isBalanced = true: isBalanced = false;
     return isBalanced;
}

int main()
{

	string code;
	cout<<"Enter an code:  ";
	cin>>code;

	if(isProperlyNested(code) == true)
		cout<<"true\n";
	else
		cout<<"false\n";
}
