@Characters = React.createClass
  getInitialState: ->
    characters: @props.data

  getDefaultProps: ->
    characters: []

  addCharacter: (character) ->
    characters = React.addons.update(@state.characters, { $push: [character] })
    @setState characters: characters

  updateCharacter: (character, description) ->
    index = @state.characters.indexOf character
    characters = React.addons.update(@state.characters, { $splice: [[index, 1, description]] })
    @replaceState characters: characters

  deleteCharacter: (character) ->
    index = @state.characters.indexOf character
    characters = React.addons.update(@state.characters, { $splice: [[index, 1]] })
    @replaceState characters: characters

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
            React.DOM.th null, 'Actions'
        React.DOM.tbody null,
          console.log 'Testing State: ', @state.characters
          for character in @state.characters
            React.createElement Character, key: character.id, character: character, handleDeleteCharacter: @deleteCharacter
