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
        @state.name
      React.DOM.p
        className: 'paragraph'
        'Class: '
        @state.class_type
      React.DOM.p
        className: 'paragraph'
        'Level: '
        @state.level
