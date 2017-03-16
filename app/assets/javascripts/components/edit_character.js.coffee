@EditCharacter = React.createClass
  getInitialState: ->
    @props.description

  # getDefaultProps: ->
  #   characters: []

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value

  handleUpdate: (e) ->
    e.preventDefault()
    description =
      name: @props.description.name
      class_type: @state.class_type
      level: @state.level
      race: @state.race
      alignment: @state.alignment
      deity: @state.deity
      size: @state.size
      age: @state.age
      gender: @state.gender
      height: @state.height
      weight: @state.weight
      eyes: @state.eyes
      hair: @state.hair
      skin: @state.skin
      bio: @state.bio
    $.ajax
      method: 'PUT'
      url: "/characters/#{ @props.description.id }"
      dataType: 'JSON'
      data:
        character: description
      success: () =>
        window.location.href = '/characters'

  render: ->
    React.DOM.div null,
      React.DOM.h1
        className: 'heading-1'
        @state.name
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
