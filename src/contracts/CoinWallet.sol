pragma solidity ^0.8.0;

contract CoinWallet {
    mapping(address => uint256) balances;

    event Transfer(address indexed from, address indexed to, uint256 value);

    function transfer(address to, uint256 value) public {
        require(balances[msg.sender] >= value, "Insufficient balance.");
        balances[msg.sender] -= value;
        balances[to] += value;
        emit Transfer(msg.sender, to, value);
    }

    function getBalance(address account) public view returns (uint256) {
        return balances[account];
    }

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }
}
