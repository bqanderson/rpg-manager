@NewCharacter = React.createClass
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
    ability: {
      str: ''
      str_mod: ''
      dex: ''
      dex_mod: ''
      con: ''
      con_mod: ''
      int: ''
      int_mod: ''
      wis: ''
      wis_mod: ''
      cha: ''
      cha_mod: ''
    }

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value

  handleSubmit: (e) ->
    e.preventDefault()
    $.post '/characters', { character: @state }, (description, ability) =>
      'JSON'
    window.location.href = '/characters'

  render: ->
    React.DOM.div null,
      React.DOM.h1
        className: 'heading-1'
        'Create a New Character'
      React.DOM.p
        className: 'paragraph'
        'Creating a new Dungeons and Dragons character can be as much fun as coding in Ruby on Rails!'
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
              placeholder: 'Name'
              value: @props.name
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'name'
              'Name'
          React.DOM.div
            className: 'form-group large'
            React.DOM.input
              className: 'form-control large'
              type: 'text'
              name: 'class_type'
              value: @props.class_type
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'name'
              'Class'
          React.DOM.div
            className: 'form-group small'
            React.DOM.input
              className: 'form-control small'
              type: 'number'
              name: 'level'
              value: @props.level
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'level'
              'Level'
          React.DOM.div
            className: 'form-group medium'
            React.DOM.input
              className: 'form-control medium'
              type: 'text'
              name: 'race'
              value: @props.race
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'race'
              'Race'
          React.DOM.div
            className: 'form-group large'
            React.DOM.input
              className: 'form-control large'
              type: 'text'
              name: 'alignment'
              value: @props.alignment
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'alignment'
              'Alignment'
          React.DOM.div
            className: 'form-group medium'
            React.DOM.input
              className: 'form-control medium'
              type: 'text'
              name: 'deity'
              value: @props.deity
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'deity'
              'Deity'
          React.DOM.div
            className: 'form-group medium'
            React.DOM.input
              className: 'form-control medium'
              type: 'text'
              name: 'size'
              value: @props.size
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'size'
              'Size'
          React.DOM.div
            className: 'form-group small'
            React.DOM.input
              className: 'form-control small'
              type: 'number'
              name: 'age'
              value: @props.age
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'age'
              'Age'
          React.DOM.div
            className: 'form-group medium'
            React.DOM.input
              className: 'form-control medium'
              type: 'text'
              name: 'gender'
              value: @props.gender
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'gender'
              'Gender'
          React.DOM.div
            className: 'form-group small'
            React.DOM.input
              className: 'form-control small'
              type: 'number'
              name: 'height'
              value: @props.height
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'height'
              'Height'
          React.DOM.div
            className: 'form-group small'
            React.DOM.input
              className: 'form-control small'
              type: 'number'
              name: 'weight'
              value: @props.weight
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'weight'
              'Weight'
          React.DOM.div
            className: 'form-group medium'
            React.DOM.input
              className: 'form-control medium'
              type: 'text'
              name: 'eyes'
              value: @props.eyes
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'eyes'
              'Eye Color'
          React.DOM.div
            className: 'form-group medium'
            React.DOM.input
              className: 'form-control medium'
              type: 'text'
              name: 'hair'
              value: @props.hair
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'hair'
              'Hair Color'
          React.DOM.div
            className: 'form-group medium'
            React.DOM.input
              className: 'form-control medium'
              type: 'text'
              name: 'skin'
              value: @props.skin
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'skin'
              'Skin Color'
          React.DOM.div
            className: 'form-group'
            React.DOM.textarea
              className: 'form-control bio'
              name: 'bio'
              value: @props.bio
              onChange: @handleChange
            React.DOM.label
              htmlFor: 'bio'
              'Biography'
          # Abilities
          React.DOM.h2
            className: 'heading-2'
            'Ability Scores'
          # Strength
          React.DOM.p null,
            React.DOM.div
              className: 'form-group'
              React.DOM.label
                htmlFor: 'str'
                'Strength'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'str'
                value: @props.str
                onChange: @handleChange
              React.DOM.label
                htmlFor: 'str_mod'
                'Modifier'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'str_mod'
                value: @props.str_mod
                onChange: @handleChange
          # Dexterity
          React.DOM.p null,
            React.DOM.div
              className: 'form-group'
              React.DOM.label
                htmlFor: 'dex'
                'Dexterity'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'dex'
                value: @props.dex
                onChange: @handleChange
              React.DOM.label
                htmlFor: 'dex_mod'
                'Modifier'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'dex_mod'
                value: @props.dex_mod
                onChange: @handleChange
          # Constitution
          React.DOM.p null,
            React.DOM.div
              className: 'form-group'
              React.DOM.label
                htmlFor: 'con'
                'Constitution'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'con'
                value: @props.con
                onChange: @handleChange
              React.DOM.label
                htmlFor: 'con_mod'
                'Modifier'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'con_mod'
                value: @props.con_mod
                onChange: @handleChange
            # Intelligence
            React.DOM.p null,
              React.DOM.div
                className: 'form-group'
                React.DOM.label
                  htmlFor: 'int'
                  'Intelligence'
                React.DOM.input
                  className: 'form-control small'
                  type: 'number'
                  name: 'int'
                  value: @props.int
                  onChange: @handleChange
                React.DOM.label
                  htmlFor: 'int_mod'
                  'Modifier'
                React.DOM.input
                  className: 'form-control small'
                  type: 'number'
                  name: 'int_mod'
                  value: @props.int_mod
                  onChange: @handleChange
          # Wisdom
          React.DOM.p null,
            React.DOM.div
              className: 'form-group'
              React.DOM.label
                htmlFor: 'wis'
                'Strength'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'wis'
                value: @props.wis
                onChange: @handleChange
              React.DOM.label
                htmlFor: 'wis_mod'
                'Modifier'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'wis_mod'
                value: @props.wis_mod
                onChange: @handleChange
          # Charisma
          React.DOM.p null,
            React.DOM.div
              className: 'form-group'
              React.DOM.label
                htmlFor: 'cha'
                'Strength'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'cha'
                value: @props.cha
                onChange: @handleChange
              React.DOM.label
                htmlFor: 'cha_mod'
                'Modifier'
              React.DOM.input
                className: 'form-control small'
                type: 'number'
                name: 'cha_mod'
                value: @props.cha_mod
                onChange: @handleChange
      React.DOM.p null,
        React.DOM.a
          className: 'mybtn btn-primary paragraph'
          onClick: @handleSubmit
          'Create Character'
