pragma solidity ^0.7;

// Events are used to notify some Messages. It is used as alert which can be shown on Dapps
// using web3.0. For example you want to log either trasnfer is sent to other person or not. 
// You can use Event  

// You can check past events and can subscribe to events so when ever that event will happen, 
// you will be notified

contract Check_Events{
    event log(address sender,string message);
    event log_1(string message);

    function call_logs() public {
        emit log(msg.sender,"First Log");
        emit log_1("Ending");
    }
}