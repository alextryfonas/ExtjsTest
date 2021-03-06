Ext.define('AM.view.movingDoc.List', {
			extend : 'Ext.grid.Panel',
			alias : 'widget.movingDocList',

			// title : 'All Contract',
			store : 'MovingDocs',

			requires : ['Ext.grid.plugin.CellEditing', 'Ext.form.field.Text',
					'Ext.toolbar.TextItem'],

			iconCls : 'icon-grid',
			frame : true,
			stateful: true,
   			stateId: 'movingDocList',					

			initComponent : function() {
				this.columns = [{
							header : '单据类型',
							dataIndex : 'docType_txt'
						}, {
							header : '单据号',
							dataIndex : 'docNo',
							width: 100,
							
							filterable : true
					//	}, {
					//		header : '合同号',
					//		dataIndex : 'contractNo',
					//		flex : 1,
					//		filterable : true
						}, {
							header : '工作号',
							dataIndex : 'workingNo',
							width: 100,
							
							filterable : true
						}, {
							header : '车号/卡号',
							dataIndex : 'plateNum',
							width: 100,
							
							filterable : true
						}, {
							header : '批号',
							dataIndex : 'batchNo',
							width: 200,
							
							filterable : true
						}, {
							header : '日期',
							dataIndex : 'docDate',
							xtype : 'datecolumn',
							format : 'Y-m-d',
							width: 80,
							filterable : true
						}, {
							header : '进仓单号',
							dataIndex : 'deliveryNote',
							
							width: 100,
							filterable : true
						}, {
							header : '备注',
							dataIndex : 'remark',
							flex : 4,
							filterable : true
						}];

				this.dockedItems = [{
							xtype : 'toolbar',
							items : [{
										iconCls : 'icon-add',
										text : 'Add',
										action : 'add'

									}, {
										iconCls : 'icon-delete',
										text : 'Delete',
										action : 'delete'

									}]
						}, {
							xtype : 'pagingtoolbar',
							displayInfo : true,
							store : 'MovingDocs',
							dock : 'bottom'
						}

				];
				this.features = [{
					ftype : 'filters',
					// encode and local configuration options defined
					// previously for easier reuse
					encode : true, // json encode the filter query
					local : false
						// defaults to false (remote filtering)

					}];

				this.callParent(arguments);
			}
		});