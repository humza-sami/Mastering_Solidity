pragma solidity ^0.7;

//  In this Example we will call other deployed contract function using address as parameter

contract dummy 
{
    function callMe(string memory) public pure returns(bool)
    {
        return true;
    }
}

contract caller
{
    function letsCall(address _add) public  
    {
        (bool success, bytes memory data) = _add.call(abi.encodeWithSignature("callME(string)","Hello World !!"));
    } 
}