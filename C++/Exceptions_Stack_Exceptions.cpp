#include "Exceptions_Stack_Exceptions.h"

stack_size_error:: stack_size_error(const string &msg) : length_error(msg)
{
};

stack_bad_alloc :: stack_bad_alloc()
{
};

stack_overflow:: stack_overflow(string &msg): logic_error(msg)
{
};

stack_empty:: stack_empty(string &msg): logic_error(msg)
{
};

