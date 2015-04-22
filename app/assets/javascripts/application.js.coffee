# // This is a manifest file that'll be compiled into application.js, which will include all the files
# // listed below.
# //
# // Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# // or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
# //
# // It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# // compiled file.
# //
# // Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# // about supported directives.
# //
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require react
//= require_tree .

# $ ->
#   React.renderComponent(
#     React.DOM.div({}, "Hello world!"),
#     document.body
#   )


# $ ->
#   virtualDom = React.DOM.div(
#     {id: "render-me-react-please"},
#     React.DOM.a(
#       {href:"javascript:void(0)", id: "do-nothing-link"},
#       "Click me"
#     )
#   )
#
#   React.renderComponent(
#     virtualDom,
#     document.body
#   )
#


# $ ->
#   linkClicked = (event) ->
#     console.log(event)
#     console.log(event.target)
#     alert("you clicked me")
#
#   virtualDom = React.DOM.div(
#     {id: "render-me-react-please"},
#     React.DOM.a(
#       {href:"javascript:void(0)", onClick: linkClicked},
#         "Click me!"
#       )
#     )
#
#   React.renderComponent(
#     virtualDom,
#     document.body
#   )



#
# $ ->
#   virtualDomAfterClick = React.DOM.div(
#     {id: "render-me-react-please"},
#     React.DOM.span({}, "congratulations, you can read")
#   )
#
#   linkClicked = (event) ->
#     React.renderComponent(
#       virtualDomAfterClick,
#       document.body
#     )
#
#   virtualDomBeforeClick = React.DOM.div(
#     {id: "render-me-react-please"},
#     React.DOM.a(
#       {href:"javascript:void(0)", onClick: linkClicked},
#       "Click me!"
#     )
#   )
#
#   React.renderComponent(
#     virtualDomBeforeClick,
#     document.body
#   )


$ ->
  OneTimeClickLink = React.createClass

    getInitialState: ->
      {clicked: false}

    linkClicked: (event) ->
      @setState(clicked: true)

    child: ->
      {
        false: React.DOM.a(
          {href:"javascript:void(0)", onClick: @linkClicked},
          "Click me!"
        )

        true: React.DOM.span(
          {}, "congratulations, you can read and click"
        )
      }[@state.clicked]

    render: ->
      React.DOM.div( {id: "one-time-click-link"}, @child())


  React.renderComponent(
    OneTimeClickLink(),
    document.body
  )
