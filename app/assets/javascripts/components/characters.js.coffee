@Characters = React.createClass
  getInitialState: ->
    characters: @props.data
  getDefaultProps: ->
    characters: []
  render: ->
    React.DOM.div null,
      React.DOM.h1
        className: 'heading-1'
        'Character List'
      React.DOM.table null,
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Name'
            React.DOM.th null, 'Class'
            React.DOM.th null, 'Level'
        React.DOM.tbody null,
          for character in @state.characters
            React.createElement Character, key: character.id, character: character
