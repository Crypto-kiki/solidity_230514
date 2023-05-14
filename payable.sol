// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract Wedding {

    address Goerli_ETH = (0x07865c6e87b9f70255377e024ace6630c1eaa37f);

    mapping(address => address) sendToOwner;
    mapping(address => uint) claim;

    function sendEth(address payable _receiver, uint _amount) public payable {
        sendToOwner[msg.sender] = _receiver;
        Goerli_ETH.transferFrom(msg.sender, this, _amount);
        claim[_receiver] = _amount;
    }

}
