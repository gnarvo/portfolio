/**
@file CustomQueue.h
CustomQueue class header file. This class contains an event queue with a wrapper.
This wrapper ensures that the queue's thread is initialised and that the queue is
dispatched before being used by any of the other classes. Several of the classes
have status prints within their constructors, so a pre-main initialisation is critical
to capture all status messages.

Author - Jack Pendlebury
**/

#ifndef __CUSTOM_QUEUE__
#define __CUSTOM_QUEUE__

#include "mbed.h"
#include "uop_msb.h"
#include "string.h"
#include <string>


/**
Event Queue wrapper class.
An example call is shown below:
@code 
CustomQueue* queue;
queue->custom.call(printf, "FATAL Error Code - %d\n", (errorNumber & 255));
@endcode
**/
class CustomQueue{
    private:

    public: 
    /**
    Default constructor. This constructor initialises the Thread Object
    QUEUE_THREAD and sets the queue to dispatch forever via a callback. 
    The message @code "Queue Initialised" @endcode will be displayed once 
    initialisation has been completed.

    **/
    CustomQueue();
    EventQueue custom;       ///<Event Queue Object. This class is a wrapper for this object.
    Thread QUEUE_THREAD;    ///<Thread Object. This thread is solely responsible for the queue.
};

#endif