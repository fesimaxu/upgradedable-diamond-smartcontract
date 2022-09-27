// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


struct AppStorage {
    
    // Name of the Token
    string name;

    // Symbol of the Token
    string symbol;

    // Total Supply of the Token
    uint256 totalSupply;
    
    // Decimal value of the Token
    uint256 decimal;

    //mapping TokenID to the NFT Token ID address
     mapping(uint256 => address) _owners;
    
    
    // Balance of the Token
    mapping(address => uint256) _balances;
    
    // Allowance to spend
    mapping(address => mapping(address => uint256)) ownerAllowance;


    //mapping TokenID to approved address
     mapping(uint256 => address)  _tokenApprovals;
     
    // Mapping from owner to operator approvals
     mapping(address => mapping(address => bool))  _operatorApprovals;
}