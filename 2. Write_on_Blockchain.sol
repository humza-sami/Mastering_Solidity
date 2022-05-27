pragma solidity ^0.7;

// State Variables are writthen on blockchain
// Memory variables are called only when function is called
// CallData vairbales are those variables which are passed through function parameters

contract variables{

    // This contract write something on blockchain using state-variables

    string public state_variable;

    function set(string memory temp) public {
        state_variable = temp;
    }

    function get() public view returns(string memory){
        return state_variable;
    }
}