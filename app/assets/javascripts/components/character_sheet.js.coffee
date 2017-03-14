@CharacterSheet = React.createClass
  getInitialState: ->
    @props.description

  render: ->
    React.DOM.div null,
      React.DOM.h1
        className: 'heading-1'
        'Character sheet'
      React.DOM.p
        className: 'paragraph'
        'Name: '
        @props.description.name
      React.DOM.p
        className: 'paragraph'
        'Class: '
        @props.description.class_type
      React.DOM.p
        className: 'paragraph'
        'Level: '
        @props.description.level
