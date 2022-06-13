pragma solidity ^0.7;

//  Public Variables and Methods can be called by anyome
//  Internal Variables and Methods can be called by only child contratcs
//  Private Variables and Methods can only be called within base contract
//  External Variables and Methods can only be called by contratcs which are not child contract and base contract.


contract Base{
    string public A = "Public";
    string internal B = "Internal";
    string private C = "Private"; 

}

contract child is Base{

}