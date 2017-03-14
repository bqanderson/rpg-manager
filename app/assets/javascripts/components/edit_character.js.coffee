@EditCharacter = React.createClass
  getInitialState: ->
    @props.description

  getDefaultProps: ->
    characters: []

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value

  handleUpdate: (e) ->
    e.preventDefault()
    description =
      name: ReactDOM.findDOMNode(@refs.name).value
      class_type: ReactDOM.findDOMNode(@refs.class_type).value
      level: ReactDOM.findDOMNode(@refs.level).value
      race: ReactDOM.findDOMNode(@refs.race).value
      alignment: ReactDOM.findDOMNode(@refs.alignment).value
      deity: ReactDOM.findDOMNode(@refs.deity).value
      size: ReactDOM.findDOMNode(@refs.size).value
      age: ReactDOM.findDOMNode(@refs.age).value
      gender: ReactDOM.findDOMNode(@refs.gender).value
      height: ReactDOM.findDOMNode(@refs.height).value
      weight: ReactDOM.findDOMNode(@refs.weight).value
      eyes: ReactDOM.findDOMNod(@refs.eyes).value
      hair: ReactDOM.findDOMNod(@refs.hair).value
      skin: ReactDOM.findDOMNod(@refs.skin).value
      bio: ReactDOM.findDOMNod(@refs.bio).value
    $.ajax
      method: 'PUT'
      url: "/characters/#{ @props.character.id }"
      dataType: 'JSON'
      data:
        character: description
      success: (description) =>
        @props.handleUpdateCharacter @props.character, description

  render: ->
    React.DOM.div null,
      React.DOM.h1
        className: 'heading-1'
        @props.description.name
      React.DOM.form
        className: 'new_character'
        onSubmit: @handleSubmit
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Name'
            name: 'name'
            value: @state.name
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Class'
            name: 'class_type'
            value: @state.class_type
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'number'
            placeholder: 'Level'
            name: 'level'
            value: @state.level
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Race'
            name: 'race'
            value: @state.race
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Alignment'
            name: 'alignment'
            value: @state.alignment
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Deity'
            name: 'deity'
            value: @state.deity
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Size'
            name: 'size'
            value: @state.size
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'number'
            placeholder: 'Age'
            name: 'age'
            value: @state.age
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Gender'
            name: 'gender'
            value: @state.gender
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'number'
            placeholder: 'Height'
            name: 'height'
            value: @state.height
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'number'
            placeholder: 'Weight'
            name: 'weight'
            value: @state.weight
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Eye Color'
            name: 'eyes'
            value: @state.eyes
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Hair Color'
            name: 'hair'
            value: @state.hair
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'text'
            placeholder: 'Skin Color'
            name: 'skin'
            value: @state.skin
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.input
            type: 'textarea'
            placeholder: 'Biography'
            name: 'bio'
            value: @state.bio
            onChange: @handleChange
        React.DOM.p null,
          React.DOM.a
            className: 'mybtn btn-primary paragraph'
            onClick: @handleUpdate
            'Update Character'
