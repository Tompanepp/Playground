#ifndef __EXCEPTIONS_STACK_EXCEPTIONS__
#define __EXCEPTIONS_STACK_EXCEPTIONS__

#include <exception>
#include <stdexcept>
#include <string>

using namespace std;

class stack_size_error : public length_error {
public:

    explicit stack_size_error(const string &msg);
};

class stack_bad_alloc : public bad_alloc {
public:

    explicit stack_bad_alloc();
};

class stack_overflow : public logic_error {
public:

    explicit stack_overflow(const string &msg);
};

class stack_empty : public logic_error {
public:

    explicit stack_empty(const string &msg);
};

#endif
