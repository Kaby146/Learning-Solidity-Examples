//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Array{
    // Several ways to initialize an array

    uint[] public arr;
    uint[] public arr1 = [1, 2, 3];

    //Fixed sized array, all elements initialize to 0

    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns(uint){
        return arr[i];
    }

    //Solidity can return the entire array.
    //But this function should be avoided for arrays that can grow indefinitely in length
    //Gas fees may rise inexponentially

    function getArr() public view returns(uint[] memory){
        return arr;
    }

    function push(uint i) public{
        //Append to array
        //This will increase the array length by 1.
        arr.push(i);
    }

    function pop()public{
        //Remove last element from array
        //This will obviously decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns(uint){
        //Returns the length of the array
        return arr.length;
    }

    function remove(uint index) public{
        //Delete does not change the array length but resets the value to it's default value, in this case 0
        delete arr[index];
    }
    function examples() external{
        //Create array in memory, only fixed size can be create

    }
}