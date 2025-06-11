module ListFunctions exposing (..)

import List.Extra


updateAt : List a -> Int -> (a -> a) -> List a
updateAt list index updateFunction =
    let
        itemToUpdate =
            List.Extra.getAt index list
    in
    case itemToUpdate of
        Just item ->
            let
                updatedItem =
                    updateFunction item
            in
            List.Extra.setAt index updatedItem list

        Nothing ->
            list
