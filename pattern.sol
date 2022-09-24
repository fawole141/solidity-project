pragma solidity ^0.8.0;

contract Token{
string public name = 'My token';
string public symbol = 'MT';
uint public totalsupply = 1000;
address public owner;
mapping(address => uint) balances;

constructor() {
    balances[msg.sender] = totalsupply;
    owner = msg.sender;
}

function transfer(address to, uint amount) external {
//require sender has enough tokens
require(balances[msg.sender] >= amount, 'Not enough token');
//deduct amount for sender
balances[msg.sender] -= amount;

//add amount for recepient
balances[to] += amount;

}

function balanceOf(address account) external view returns(uint){
return balances[account];
}
    
    
}
