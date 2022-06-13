pragma solidity ^0.7;

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

