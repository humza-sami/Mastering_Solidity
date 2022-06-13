pragma solidity ^0.7;

// when we want to send ETH while calling a function then we have to make that function payable
//  Payable makes a function capible of accepting ETH


contract Wallet
{
    event Deposit(address sender,uint amount,uint contract_balance);
    event Transfer(address receiver,uint amount);
    
    function deposit() public payable
    {
        emit Deposit(msg.sender,msg.value,address(this).balance);
    }

    function withdraw() public payable
    {
        msg.sender.transfer(address(this).balance);
    }

    function transfer(address receiver,uint amount) public payable
    {
        emit Transfer(receiver,amount);
        payable(receiver).transfer(address(this).balance);
    }

}

