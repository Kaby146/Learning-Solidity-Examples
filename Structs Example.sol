// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Kabys{
    
    struct Todo{
        string text;
        bool completed;
    }
    //An Array of 'Todo' structs
    Todo[] public todos;

    function create(string calldata _text) public{
        //3 ways to initialize our structs
        //-calling it like a function
        todos.push(Todo(_text,false));

        //key value mapping
        todos.push(Todo({text: _text, completed:false}));

        //initialize an empty struct and then update it
        Todo memory todo;
        todo.text = _text;
        //todo.completed initialized to false

        todos.push(todo);
        }
//Solidity automaticaly created a getter for 'todos' so no function actually needed

function get (uint _index) public view returns (string memory text, bool completed) { 
    Todo storage todo = todos[_index];
    return (todo.text, todo.completed);
    }
    //update text

    function updateText ( uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }
    //update completed
    function toggleCompleted (uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}