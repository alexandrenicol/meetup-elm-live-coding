module Main exposing (main)

import Browser
import Html exposing (Html, button, div, img, input, span, text)
import Html.Attributes exposing (class, classList, placeholder, src, style, value)
import Html.Events exposing (onClick, onInput)
import Html.Events.Extra exposing (onEnter)
import List exposing (sort, sortBy)
import ListFunctions exposing (updateAt)
import VitePluginHelper


type TodoState
    = Todo_
    | Completed


type alias Todo =
    { text : String
    , status : TodoState
    }


type alias Model =
    { todos : List Todo
    , inputValue : String
    }


type Msg
    = AddTodo
    | Edit String
    | CompleteTodo Int


initialModel : Model
initialModel =
    { inputValue = ""
    , todos = []
    }


main : Program () Model Msg
main =
    Browser.sandbox { init = initialModel, update = update, view = view }


newTodo : String -> Todo
newTodo textValue =
    { text = textValue, status = Todo_ }


completeTodo : Todo -> Todo
completeTodo todo =
    { todo | status = Completed }


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddTodo ->
            let
                newList =
                    [ newTodo model.inputValue ]
                        |> List.append model.todos
                        |> List.sortBy
                            (\todo ->
                                if todo.status == Completed then
                                    1

                                else
                                    0
                            )
            in
            { inputValue = "", todos = newList }

        Edit newValue ->
            { model | inputValue = newValue }

        CompleteTodo index ->
            let
                newList =
                    updateAt model.todos index completeTodo
                        |> List.sortBy
                            (\todo ->
                                if todo.status == Completed then
                                    1

                                else
                                    0
                            )
            in
            { model | todos = newList }


renderTodo : Int -> Todo -> Html Msg
renderTodo index todo =
    let
        isCompleted : Bool
        isCompleted =
            todo.status == Completed
    in
    div []
        [ span [ classList [ ( "completed", isCompleted ) ] ] [ text todo.text ]
        , if isCompleted then
            text ""

          else
            button [ onClick (CompleteTodo index) ] [ text "Complete" ]
        ]


renderTodos : List Todo -> Html Msg
renderTodos todos =
    todos
        |> List.indexedMap renderTodo
        |> div []



-- div [] <| List.indexedMap renderTodo todos


view : Model -> Html Msg
view model =
    div [ class "column-container" ]
        [ img [ src <| VitePluginHelper.asset "/src/assets/logo.png", style "width" "300px" ] []
        , input [ value model.inputValue, placeholder "brush the dog", onInput Edit, onEnter AddTodo ] []
        , button [ onClick AddTodo ] [ text "add the new todo" ]
        , renderTodos model.todos
        ]
