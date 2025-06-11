module Todo exposing (..)


type TodoState
    = Todo_
    | Completed


type alias Todo =
    { text : String
    , state : TodoState
    }


completeTodo : Todo -> Todo
completeTodo todo =
    { todo | state = Completed }


uncompleteTodo : Todo -> Todo
uncompleteTodo todo =
    { todo | state = Todo_ }


isCompleted : Todo -> Bool
isCompleted todo =
    case todo.state of
        Completed ->
            True

        Todo_ ->
            False
