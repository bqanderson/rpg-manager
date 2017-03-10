@Character = React.createClass
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/characters/#{ @props.character.id }"
      dataType: 'json'
      success: () ->
        @props.handleDeleteCharacter @props.character

  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.character.name
      React.DOM.td null, @props.character.class_type
      React.DOM.td null, @props.character.level
      React.DOM.td null,
        React.DOM.a
          className: 'mybtn btn-danger'
          onClick: @handleDelete
          'Delete'
