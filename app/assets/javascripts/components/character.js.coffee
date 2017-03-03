@Character = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.character.name
      React.DOM.td null, @props.character.class_type
      React.DOM.td null, @props.character.level
