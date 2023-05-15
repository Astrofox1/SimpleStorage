// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public number;
    // People public person = People({number: 5, name: "Astro"});
    mapping(string => uint256) public NameToNumber;

    struct People {
        uint256 number;
        string name;
    }

    People[] public people;

    function store(uint256 _number) public virtual {
        number = _number;
    }

    function retrieve() public view returns (uint256) {
        return number;
    }

    function addPerson(string memory _name, uint256 _number) public {
        People memory newperson = People(_number, _name);
        people.push(newperson);
        NameToNumber[_name] = _number;
    }
}
