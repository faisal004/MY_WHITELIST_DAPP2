//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;
    mapping(address => bool) public whitelisteAddresses;
    uint8 public numAddressesWhitelisted;
    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses =  _maxWhitelistedAddresses;
    }
//this is a comment
    function addAddressToWhitelist()  public {
        require (!whitelisteAddresses[msg.sender],"Address already registered");
        require(numAddressesWhitelisted<maxWhitelistedAddresses,"More Address Can Be Registered,Limit Reached");
        whitelisteAddresses[msg.sender]=true;
        numAddressesWhitelisted+=1;
    }
}