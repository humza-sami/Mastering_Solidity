pragma solidity ^0.7;

// Modifiers are like functions which can be used along with a function.
// Modifier change behavior of the function.

contract modifier_testing{
    
    address public owner_address;
    
    constructor () public{
        owner_address = msg.sender;
    }

    modifier isOwner(){
        require(owner_address==msg.sender,"You are not Owner");
        _;
    }

    modifier validAddress(address add_){
        require(add_ !=address(0),"Not a Valid Address");
        _;
    }

    function chnage_Owner(address add_) public isOwner validAddress(add_) {
        owner_address = add_;
    }

}