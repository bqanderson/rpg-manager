@ShowCharacter = React.createClass
  getInitialState: ->
    @props.data

  getDefaultProps: ->
    character: []

  render: ->
    React.DOM.div null,
      React.DOM.h1
        className: 'heading-1'
        'Character sheet'
      React.DOM.p
        className: 'paragraph'
        @props.data.name
