// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringConcatenation {
    function strConcat(string memory strA, string memory strB) public pure returns (string memory) {
        bytes memory bytA = bytes(strA);
        bytes memory bytB = bytes(strB);
        string memory ret = new string(bytA.length + bytB.length);
        bytes memory bret = bytes(ret);
        uint k = 0;
        for (uint i = 0; i < bytA.length; i++)bret[k++] = bytA[i];
        for (uint i = 0; i < bytB.length; i++) bret[k++] = bytB[i];
        return string(ret);
    }
}
