@NewCharacter = React.createClass
  render: ->
    '<div>
      <h1 className="heading-1">
        Create a New Character
      </h1>
    </div>'
    React.createElement CharacterForm, handleNewCharacter: @addCharacter
