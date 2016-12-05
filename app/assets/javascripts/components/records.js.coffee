
@Records = React.createClass
	getInitialState: ->
		records: @props.data

	getDefaultProps: ->
		records: []

	addRecord: (record) ->
		records = React.addons.update(@state.records, { $push: [record] })
		records.push record
		@setState records: records
	
	render: ->
		React.DOM.div
			className: 'records'
			React.DOM.h2
				className: 'title'
				'Records'
			# React.DOM.div
				# className: 'row'
				# 	kl
		React.DOM.table
			className: 'table table-bordered'
			React.DOM.thead null,
				React.DOM.tr null,
					React.DOM.th null, 'Date'
					React.DOM.th null, 'Title'
					React.DOM.th null, 'Amount'
			React.DOM.tbody null,
				for record in @state.records
					React.createElement Record, key: record.id, record: record


