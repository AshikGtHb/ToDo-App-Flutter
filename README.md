# todo_app

This is how the TODO App will look like:

<img width="371" alt="App Photo" src="https://github.com/AshikGtHb/ToDo-App-Flutter/assets/83348192/d5274492-2b37-425c-815d-909c092a2e51">

TODO App:
This is a simple app for flutter beginners.
In this project, we will use listviewbuilder.

We will create a list listTODO with one empty string '' in the 0th index.

After that, in the listViewbuilder, we will create a variable "index" such that 
if the value of index is 0, we will return a TextFormField. The "index" is the value of the index of the list
listTODO. If the user inputs text values in the TextFormField, the same value will be added to the list 
"listTODO". Hence, each time the user inputs the text value, the length of "listTODO" increases
and so does the "index".

Now if the value of "index" becomes more than 0, then we will return listTile with values "listTODO[index]",
which is basically the items of that list.
