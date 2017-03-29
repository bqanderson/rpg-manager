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
        #   React.DOM.input
        #     className: 'form-control small'
        #     type: 'number'
        #     placeholder: 'Level'
        #     name: 'level'
        #     value: @state.level
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control large'
        #     type: 'text'
        #     placeholder: 'Race'
        #     name: 'race'
        #     value: @state.race
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control large'
        #     type: 'text'
        #     placeholder: 'Alignment'
        #     name: 'alignment'
        #     value: @state.alignment
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control large'
        #     type: 'text'
        #     placeholder: 'Deity'
        #     name: 'deity'
        #     value: @state.deity
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control large'
        #     type: 'text'
        #     placeholder: 'Size'
        #     name: 'size'
        #     value: @state.size
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control small'
        #     type: 'number'
        #     placeholder: 'Age'
        #     name: 'age'
        #     value: @state.age
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control medium'
        #     type: 'text'
        #     placeholder: 'Gender'
        #     name: 'gender'
        #     value: @state.gender
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control small'
        #     type: 'number'
        #     placeholder: 'Ht'
        #     name: 'height'
        #     value: @state.height
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control small'
        #     type: 'number'
        #     placeholder: 'Wt'
        #     name: 'weight'
        #     value: @state.weight
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control medium'
        #     type: 'text'
        #     placeholder: 'Eye Color'
        #     name: 'eyes'
        #     value: @state.eyes
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control medium'
        #     type: 'text'
        #     placeholder: 'Hair Color'
        #     name: 'hair'
        #     value: @state.hair
        #     onChange: @handleChange
        #   React.DOM.input
        #     className: 'form-control medium'
        #     type: 'text'
        #     placeholder: 'Skin Color'
        #     name: 'skin'
        #     value: @state.skin
        #     onChange: @handleChange
        # React.DOM.div
        #   className: 'form-group'
        #   React.DOM.textarea
        #     className: 'form-control bio'
        #     placeholder: 'Biography'
        #     name: 'bio'
        #     value: @state.bio
        #     onChange: @handleChange
        React.DOM.p null,
          React.DOM.a
            className: 'mybtn btn-primary paragraph'
            onClick: @handleSubmit
            'Create Character'
