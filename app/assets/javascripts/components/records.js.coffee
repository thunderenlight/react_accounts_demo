
@Records = React.createClass
	getInitialState: ->
		records: @props.data
	getDefaultProps: ->
		records: []
	render: ->
		React.DOM.div
			className: 'records'
		React.DOM.h2
			className: 'title'
			'Records'
		React.DOM.table
			className: 'table table-bordered'
			React.DOM.thead null,
				React.DOM.tr null,
					React.DOM.tr null, 'Date'
					React.DOM.tr null, 'Title'
					React.DOM.tr null, 'Amount'
			React.DOM.tbody null,
				for record in @state.records
					React.createElement Record, key: record.id, record: record


