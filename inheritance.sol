// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Base Contract: Animal
contract Animal {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }

    function makeSound() public virtual pure returns (string memory) {
        return "Some generic animal sound";
    }
}

contract Dog is Animal {
    constructor(string memory _name) Animal(_name) {}

    function makeSound() public pure override returns (string memory) {
        return "Woof!";
    }
}

contract Cat is Animal {
    constructor(string memory _name) Animal(_name) {}

    function makeSound() public pure override returns (string memory) {
        return "Meow!";
    }
}
