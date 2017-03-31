@NewDescrtiption = React.createClass
  getInitialState: ->
    description: {
      name: ''
      class_type: ''
      level: ''
      race: ''
      alignment: ''
      deity: ''
      size: ''
      age: ''
      gender: ''
      height: ''
      weight: ''
      eyes: ''
      hair: ''
      skin: ''
      bio: ''
    }

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value

  handleSubmit: (e) ->
    e.preventDefault()
    $.post '/characters', { character: @state }, (description) =>
      'JSON'
    window.location.href = '/characters'

  render: ->
    React.DOM.div null,
      React.DOM.form
        className: 'new_character form-inline'
        onSubmit: @handleSubmit
        React.DOM.div
          className: 'form-group large'
          React.DOM.input
            className: 'form-control large'
            type: 'text'
            name: 'name'
            value: @state.name
            onChange: @handleChange
          React.DOM.label
            for: 'name'
            'Name'
        React.DOM.div
          className: 'form-group large'
          React.DOM.input
            className: 'form-control large'
            type: 'text'
            name: 'class_type'
            value: @state.class_type
            onChange: @handleChange
          React.DOM.label
            for: 'name'
            'Class'
        React.DOM.div
          className: 'form-group small'
          React.DOM.input
            className: 'form-control small'
            type: 'number'
            name: 'level'
            value: @state.level
            onChange: @handleChange
          React.DOM.label
            for: 'level'
            'Level'
        React.DOM.div
          className: 'form-group medium'
          React.DOM.input
            className: 'form-control medium'
            type: 'text'
            name: 'race'
            value: @state.race
            onChange: @handleChange
          React.DOM.label
            for: 'race'
            'Race'
        React.DOM.div
          className: 'form-group large'
          React.DOM.input
            className: 'form-control large'
            type: 'text'
            name: 'alignment'
            value: @state.alignment
            onChange: @handleChange
          React.DOM.label
            for: 'alignment'
            'Alignment'
        React.DOM.div
          className: 'form-group medium'
          React.DOM.input
            className: 'form-control medium'
            type: 'text'
            name: 'deity'
            value: @state.deity
            onChange: @handleChange
          React.DOM.label
            for: 'deity'
            'Deity'
        React.DOM.div
          className: 'form-group medium'
          React.DOM.input
            className: 'form-control medium'
            type: 'text'
            name: 'size'
            value: @state.size
            onChange: @handleChange
          React.DOM.label
            for: 'size'
            'Size'
        React.DOM.div
          className: 'form-group small'
          React.DOM.input
            className: 'form-control small'
            type: 'number'
            name: 'age'
            value: @state.age
            onChange: @handleChange
          React.DOM.label
            for: 'age'
            'Age'
        React.DOM.div
          className: 'form-group medium'
          React.DOM.input
            className: 'form-control medium'
            type: 'text'
            name: 'gender'
            value: @state.gender
            onChange: @handleChange
          React.DOM.label
            for: 'gender'
            'Gender'
        React.DOM.div
          className: 'form-group small'
          React.DOM.input
            className: 'form-control small'
            type: 'number'
            name: 'height'
            value: @state.height
            onChange: @handleChange
          React.DOM.label
            for: 'height'
            'Height'
        React.DOM.div
          className: 'form-group small'
          React.DOM.input
            className: 'form-control small'
            type: 'number'
            name: 'weight'
            value: @state.weight
            onChange: @handleChange
          React.DOM.label
            for: 'weight'
            'Weight'
        React.DOM.div
          className: 'form-group medium'
          React.DOM.input
            className: 'form-control medium'
            type: 'text'
            name: 'eyes'
            value: @state.eyes
            onChange: @handleChange
          React.DOM.label
            for: 'eyes'
            'Eye Color'
        React.DOM.div
          className: 'form-group medium'
          React.DOM.input
            className: 'form-control medium'
            type: 'text'
            name: 'hair'
            value: @state.hair
            onChange: @handleChange
          React.DOM.label
            for: 'hair'
            'Hair Color'
        React.DOM.div
          className: 'form-group medium'
          React.DOM.input
            className: 'form-control medium'
            type: 'text'
            name: 'skin'
            value: @state.skin
            onChange: @handleChange
          React.DOM.label
            for: 'skin'
            'Skin Color'
        React.DOM.div
          className: 'form-group'
          React.DOM.textarea
            className: 'form-control bio'
            name: 'bio'
            value: @state.bio
            onChange: @handleChange
          React.DOM.label
            for: 'bio'
            'Biography'
        React.DOM.p null,
          React.DOM.a
            className: 'mybtn btn-primary paragraph'
            onClick: @handleSubmit
            'Create Character'
