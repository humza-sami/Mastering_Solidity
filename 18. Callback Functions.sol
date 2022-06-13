pragma solidity ^0.7;

// Fallback function is default function which is called when :

// When Ether is send to contract using Call / Trnasfer / Send Methods
// When User call a function which is not in the contract

contract receiver
{
    fallback() external payable {}
    function getBalance() public view returns(uint) 
    {
        return address(this).balance;
    } 
}

contract sender
{
    function sendViaTransfer( address payable _to) public payable  {
        _to.transfer(msg.value);
    } 

    function sendViaSend( address payable _to) public payable  {
        bool sent = _to.send(msg.value);
        require(sent,"Not Sent !!");
    }   

    function sendViaCall( address payable _to) public payable  {
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent,"Not Sent !!");
    }

}