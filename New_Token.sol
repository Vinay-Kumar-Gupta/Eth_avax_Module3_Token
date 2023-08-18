// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract New_Token
{
    string public _Name;
    string public _Abb;
    uint public total_token;
    address public owner;
    mapping(address => uint) public _balance;

    modifier Auth()
    {
        require(msg.sender == owner,"Oops , You are not an Authorized Person !!!");
        _;
    }

    constructor(string memory _name,string memory _abb,uint start_balance)
    {
        _Name = _name;
        _Abb = _abb;
        owner = msg.sender;
        _balance[msg.sender] = start_balance;
        total_token = start_balance;
    }

    function mint(address to,uint Token_amount) public Auth
     {
         _balance[to] += Token_amount;
         total_token += Token_amount;
    }

    function burn(uint Token_amount) public
    {
        require(_balance[msg.sender] >= Token_amount,"Out of Tokens");
        total_token -= Token_amount;
        _balance[msg.sender] -= Token_amount;
    }

    function transfer(address to,uint Token_amount) public
    {
        require(_balance[msg.sender] >= Token_amount,"Out of Tokens");
        _balance[msg.sender] -= Token_amount;
        _balance[to] += Token_amount;
    }
}
