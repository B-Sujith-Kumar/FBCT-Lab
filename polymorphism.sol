// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Shape {
    function getArea () public virtual view returns (uint) {
        return 0;
    }
}

contract Circle is Shape {
    uint radius;
    constructor (uint rad) {
        radius = rad;
    }
    function getArea () public view override returns (uint) {
        return 3 * radius * radius;
    }
}

contract Reactangle is Shape {
    uint length;
    uint breadth;
    constructor (uint _len, uint _bre) {
        length = _len;
        breadth = _bre;
    }
    function getArea () public view override returns (uint) {
        return length * breadth;
    }
}

contract AreaContract {
    function getArea (Shape _sh) public view returns (uint) {
        return _sh.getArea();
    }
}

