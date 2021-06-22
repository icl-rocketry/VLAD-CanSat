// collect errors from other children
// control buzzer for errors
// provide data to other children
// Palash

// This snippet will be called any time there is an error update from any of the children. Not usable rn.
class ErrorHandler
{
private:
    /* data */
public:
    ErrorHandler(/* args */);
    ~ErrorHandler();
};

ErrorHandler::ErrorHandler(/* args */)
{
}

ErrorHandler::~ErrorHandler()
{
}

// This snippet will be used by this code itself to buzz any time a (critical) error is spotted. Not usable.
class BuzzMe
{
private:
    /* data */
public:
    BuzzMe(/* args */);
    ~BuzzMe();
};

BuzzMe::BuzzMe(/* args */)
{
}

BuzzMe::~BuzzMe()
{
}

// Not sure what to do about the sending data to other children.