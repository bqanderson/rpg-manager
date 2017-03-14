# My first attempt to create a componant for description forms so I don't
# have to repeat the code for both new and edit characters
# Currently not working... :(

@DescrtiptionForm = React.createClass
  render: ->
    React.DOM.div null,
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
          React.DOM.button
            type: 'submit'
            className: 'mybtn btn-primary'
            'Create Character'
