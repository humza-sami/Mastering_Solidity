pragma solidity ^0.7;

contract A{
    string public contract_1_name = "A";
}

contract B{
    string public contract_2_name = "B";
}

contract C is A,B {
    constructor() A() B() public{

    }
 }