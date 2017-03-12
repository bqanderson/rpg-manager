@ShowCharacter = React.createClass
  getInitialState: ->
    @props.data

  render: ->
    React.DOM.div null,
      React.DOM.h1
        className: 'heading-1'
        'Character sheet'
      React.DOM.p
        className: 'paragraph'
        'Name: '
        @props.data.name
      React.DOM.p
        className: 'paragraph'
        'Class: '
        @props.data.class_type
