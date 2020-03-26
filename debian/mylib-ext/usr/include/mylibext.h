#ifndef MYLIBEXT_H
#define MYLIBEXT_H

#include <string>

using  std::string;

class MyLibExt
{
public:
    MyLibExt();
    string sayHello(const char* name);
    string sayHelloExt(const char* name);
};

#endif // MYLIBEXT_H
