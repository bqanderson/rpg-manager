@NewCharacter = React.createClass

  render: ->
    React.DOM.div null,
      React.DOM.h1
        className: 'heading-1'
        'Create a New Character'
      React.DOM.p
        className: 'paragraph'
        'Creating a new Dungeons and Dragons characer can be as much fun as coding in Ruby on Rails!'
      React.createElement CharacterForm
