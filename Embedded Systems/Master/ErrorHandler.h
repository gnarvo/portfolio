/**
@file ErrorHandler.h
Error Handler class header file.

Author - Jack Pendlebury
**/

#ifndef H_ERROR_HANDLER
#define H_ERROR_HANDLER
#include "DigitalOut.h"
#include "SevenSegmentDisplay.h"
#include "Thread.h"
#include "mbed.h"
#include "Mutex.h"
#include <uop_msb.h>
#include "CustomQueue.h"
using namespace uop_msb;
///Macro to control the buzzer usuage.
///set to 0 when using networking functionality to avoid a hardware fault.
///Pre-processor directives will replace buzzer calls with queued print dispatches to the serial output.
#define BUZZER_ENABLE 0


// ERROR CODE FORMAT
// TWELVE BITS
//   11->8   Severity Code
//   7->4    Module Code
//   3->0    Error ID
// SEVERITY CODES
//  0x0 - WARNING
//  0x1 - CRITICAL
//  0x2 - FATAL
//  0x4 - ENV_ERROR
//  0x5 - NET_ERROR
//  0x9 - ALL CLEAR

//error codes - 10s

#define BUFFER_FULL             0x110 ///< FULL BUFFER - SEVERITY CRITICAL
#define BUFFER_LOCK_TIMEOUT     0x111 ///< BUFFER LOCK TIMEOUT - CRITICAL
#define TIMER_LOCK_TIMEOUT      0x112 ///< TIMER LOCK TIMEOUT - CRITICAL
#define EMPTY_FLUSH             0x013 ///< FLUSH WHEN EMPTY - WARNING
#define BUFFER_FLUSH_TIMEOUT    0x114 ///< FAILED FLUSH - CRITICAL

//sd card errors - 20s - All Critical
///NO SD CARD MOUNTED - CRITICAL
#define MOUNT_ERROR             0x120
///NO FILE TO WRITE TO - CRITICAL
#define NO_SD_FILE              0x121
///SD CARD SLOT EMPTY, CANNOT FLUSH - CRITICAL
#define UNMOUNTED_FLUSH         0x122

//ENV_ERRORS - 30s
#define T_LOWER 0x430 ///< Lower temperature threshold exceeded.
#define T_UPPER 0x431 ///< Upper temperature threshold exceeded.
#define P_LOWER 0x433 ///< Lower pressure threshold exceeded.
#define P_UPPER 0x434 ///< Upper pressure threshold exceeded.
#define L_LOWER 0x435 ///< Lower light threshold exceeded.
#define L_UPPER 0x436 ///< Upper light threshold exceeded.

//networking errors - 40s
#define NO_NETWORK_INTERFACE    0x540   ///< NO NETWORK INTERFACE CONNECTED/FOUND
#define CONNECTION_ERROR        0x541   ///< COULD NOT CONNECT TO SERVER
#define TIME_ERROR              0x542   ///< FAILED TO GET TIME FROM NTP SERVER
#define NO_IP_ADDRESS           0x543   ///< COULD NOT GET IP ADDRESS
#define LISTENER_ERROR          0x544   ///< LISTENER ERROR

//error handler errors
///Flag clear error, immediate reset.
#define FLAG_CLEAR_ERROR 0x299

///All clear from modules. Clears current error code.
#define ALL_CLEAR 0x999

/**
Thread-safe error handler class.
To send an error to the error handler, use the format:
    @code
    EH.setErrorFlag(T_UPPER);
    @endcode
**/
class ErrorHandler {
    private:
    /**
    Enumerated value for storing the error severity.
    Corresponds to the first four bits of each error code. All severities will display the error code on the seven segment display.
    **/
    enum errorSeverity{
    WARNING = 0x0,      ///< Lights a yellow LED.
    CRITICAL = 0x1,     ///< Lights a red LED, sounds a 30 second alarm, and performs a reset of the board.
    FATAL = 0x2,        ///< Immediate reset of the board.
    BUFF_FULL = 0x3,    ///< Legacy severity for testing buffer integration.
    ENV_ERR = 0x4,      ///< sounds a buzzer for three seconds.
    NET_ERROR = 0x5,    ///< networking error causes the boad to reset.
    CLEAR = 0x9         ///< Clears all error outputs.
    };   
    typedef void(*funcPointer_t)(void);     ///<Function pointer for callbacks
    DigitalOut yellowLED = TRAF_YEL1_PIN;
    DigitalOut redLED = TRAF_RED1_PIN;
    InterruptIn override_button;            ///<Interrupt attached to the User Button. Used for alarm override.
    #if BUZZER_ENABLE == 1
    Buzzer buzz;                            ///<Buzzer instance. Only present if BUZZER_ENABLE == 1.
    char note = 'C';
    #endif
    
    SevenSegmentDisplay errorDisplay; ///<Seven Segment Display used for displaying the active error code
    
    Mutex flagLock; ///<Error flag clearing lock.
    CustomQueue* queue; ///<Pointer to the output error queue
    
    int flag_value = 0;
    int currentErrorSeverity = 0;
    int alarm_status=0;
    int prevAlarmFlag=0;
    /**Function for clearing the Error Handler's thread flags safely
    **/
    void clear_all();

    /**
    ISR to handle the user button alarm override. This ISR disables the buzzer prematurely, before the error
    handler normally would.
    **/
    void alarm_override();

    public:
    
    /**
    Construct an ErrorHandler object. This constructor must be given a pointer to an event queue in order
    to properly output error codes over serial. This class will not function without one, and no alternative
    constructor is provided.
    @code
    EventQueue* queue = new EventQueue();
    ErrorHandler EH(queue);
    @endcode
    To send an error to the error handler, use the format:
    @code
    EH.setErrorFlag(T_UPPER);
    @endcode
    @param errorQueue - Pointer to an eventQueue object to be used for printing the
                        error messages to a serial output device
    **/
    ErrorHandler(CustomQueue* errorQueue);
    ~ErrorHandler();
    /**
    Main error handler functionality. Waits for a flag to be set using setErrorFlag, before
    responding with the appropriate outputs based on the error severity. An example call can be seen below.

    **/
    void error_thread();

    /**
    Public method for passing errors to the error handler.
    @param errorCode Error code value, should use one of the specified macros in ErrorHandler.h
    **/
    void setErrorFlag(int errorCode);

    
    Thread ERROR_THREAD_NAME;
};

#endif
