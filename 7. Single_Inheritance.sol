pragma solidity ^0.7;

// Using Inhertiance We can use one contract methods into another contract without writing
// new methods again.
// Here we are inherting child contract with parent contract

contract parent{
    string public name;

    constructor(string memory _name){
        name = _name;
    }
}

contract child is parent{ 

    constructor(string memory _name) parent(_name) public{
    }
}