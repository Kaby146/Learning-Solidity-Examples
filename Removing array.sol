//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ArrayRemoveByShifting{
    //[1, 2, 3] -- remove(1) --> [1, 2, 3] --> [1,3]
    uint[] public arr;

    function remove (uint _index) public{
        require(_index < arr.length, "Index out of bounds");

        for (uint i = _index; i < arr.length - 1; i++){
            arr[i] = arr[i+1];
        }
        arr.pop();
        }

        function test() external {
            arr = [1,2,3,4,5];
            remove (2);
            //arr = [1,2,4,5]
            assert(arr[0] == 1);
            assert(arr[1] == 2);
            assert(arr[2] == 4);
            assert(arr[3] == 5);
            assert(arr.length == 4);

            arr = [1];
            remove(0);
            // []
            assert(arr.length == 0);
        }
    }