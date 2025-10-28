// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title GreenToken
 * @dev A simple ERC20-like smart contract that rewards users for eco-friendly actions.
 */
contract GreenToken {
    string public name = "GreenToken";
    string public symbol = "GTN";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) private balances;
    mapping(address => mapping(address => uint256)) private allowances;
    address public owner;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event RewardIssued(address indexed to, uint256 amount, string action);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    /// @notice Transfer tokens between users
    function transfer(address _to, uint256 _amount) external returns (bool) {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
        emit Transfer(msg.sender, _to, _amount);
        return true;
    }

    /// @notice Reward users for eco-friendly actions
    /// @param _to The address of the user being rewarded
    /// @param _amount The number of tokens to mint
    /// @param _action Description of the eco-friendly action
    function rewardForAction(address _to, uint256 _amount, string calldata _action) external onlyOwner {
        totalSupply += _amount;
        balances[_to] += _amount;
        emit RewardIssued(_to, _amount, _action);
    }

    /// @notice Check a user's token balance
    function balanceOf(address _account) external view returns (uint256) {
        return balances[_account];
    }
}
