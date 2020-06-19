module Tablet.About exposing (aboutPage)

import BasicColors exposing (white)
import Data exposing (myEmail)
import Element
    exposing
        ( Element
        , alpha
        , centerX
        , centerY
        , column
        , fill
        , moveUp
        , padding
        , paragraph
        , px
        , spacing
        , text
        , width
        )
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import HelperFunctions exposing (bkgAttributes, textElement)
import MessagesAndModels exposing (Msg)
import Tablet.Colors exposing (grayFortyTwo)


aboutPage : Element Msg
aboutPage =
    homepageItems


homepageItems : Element Msg
homepageItems =
    column
        [ centerX
        , centerY
        , moveUp 100
        ]
        [ titleBox, frontPageParagraph ]


titleBox : Element Msg
titleBox =
    column
        [ centerX
        , centerY
        , padding 10
        , Font.color white
        , spacing 10
        , Font.bold
        , width fill
        , bkgAttributes
            [ Background.color grayFortyTwo
            , alpha 0.75
            , Border.roundEach
                { topLeft = 10
                , topRight = 10
                , bottomLeft = 0
                , bottomRight = 0
                }
            ]
        ]
        [ textElement
            [ Font.size 40
            , centerX
            ]
            "About Me"
        ]


frontPageParagraph : Element Msg
frontPageParagraph =
    let
        frontPageText =
            "For professional inqueries, please contact me at " ++ myEmail ++ " and I will get back to you as soon as possible. I look forward to speaking with you."
    in
    paragraph
        [ centerX
        , centerY
        , Font.color white
        , padding 25
        , width <| px 1050
        , bkgAttributes
            [ Background.color grayFortyTwo
            , alpha 0.6
            , Border.rounded 10
            , Border.roundEach
                { topLeft = 0
                , topRight = 0
                , bottomLeft = 10
                , bottomRight = 10
                }
            ]
        ]
        [ text frontPageText ]
