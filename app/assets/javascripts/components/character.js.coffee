@Character = React.createClass
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/characters/#{ @props.character.id }"
      dataType: 'json'
      success: (data) =>
        @props.handleDeleteCharacter @props.character

  handleView: (e) ->
    window.location.href = "/characters/#{ @props.character.id }"

  handleEdit: (e) ->
    window.location.href = "/characters/#{ @props.character.id }/edit"

  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.character.name
      React.DOM.td null, @props.character.class_type
      React.DOM.td null, @props.character.level
      React.DOM.td null,
        React.DOM.a
          className: 'mybtn btn-secondary'
          onClick: @handleView
          'View'
        React.DOM.a
          className: 'mybtn btn-secondary'
          onClick: @handleEdit
          'Edit'
        React.DOM.a
          className: 'mybtn btn-danger'
          onClick: @handleDelete
          'Delete'
