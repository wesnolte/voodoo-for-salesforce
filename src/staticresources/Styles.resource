/* Resets */
h1, h2, h3, p, div, html, body{
    margin: 0;
    padding: 0;
}

html, body, #voodoo, #credits {
    width: 172px;           
}

#create-todo {
}

#credits {
    color: #999;
}

.todo{
    padding: 4px 0;
}

.todos {
    height: 130px;
    top: 27px;
    overflow-y: scroll;
    padding: 5px 0;
    position: absolute;
    width: 175px;
}

#todo-container {
    position: relative;
}
    
.new-todo {
    height: 20px;
    line-height: 20px;
    width: 100%;
}               

#todo-list {}

    #todo-list .check {
      float: left;
      margin: 0 10px 0 7px;                             
      position: relative;
      top: 2px;
    }       
    
    #todo-list .done {
      text-decoration: line-through;
      color: #777777;
    }                   

    #todo-list .editing .display,
    #todo-list .edit {
      display: none;
    }
    #todo-list .editing .edit {
      display: block;
    }       
    
    #todo-list li {
      padding: 12px 20px 11px 0;
      position: relative;
      border-bottom: 1px solid #cccccc;
    }           
    
    #todo-list .todo-destroy {
      bottom: 3px;
      cursor: pointer;    
      color: red;
      display: none;
      height: 14px;
      position: absolute;
      right: 2px;
      text-decoration: none;
      width: 10px;
    }
    
    #todo-list li:hover .todo-destroy {
      display: block;
    }                           
            
    #voodoo ol, #voodoo ul, #voodoo li {
      list-style: none;
      margin: 0;
      padding: 0;
    }
    
#stats{
    position: fixed;
    bottom: 0;
}               

#voodoo, #credits {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 12px;
}           

    #voodoo a img {
      border: none;
    }       
