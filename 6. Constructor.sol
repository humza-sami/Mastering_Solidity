pragma solidity ^0.7;

// Constructor is a function which is called when a contract is created.
// It is used to initilazed some variables at start of contract creation.

contract Constructor{

    uint a;
    uint b;

    constructor(uint a_, uint b_) public{

        a = a_; // initialize a with a_ value
        b = b_; // initialize b with b_ value

    }
}