Ext.define('AM.view.outgoingDoc.List', {
			extend : 'Ext.grid.Panel',
			alias : 'widget.outgoingDocList',

			// title : 'All Contract',
			store : 'OutgoingDocs',

			requires : ['Ext.grid.plugin.CellEditing', 'Ext.form.field.Text',
					'Ext.toolbar.TextItem'],

			iconCls : 'icon-grid',
			frame : true,

			initComponent : function() {
				this.columns = [{
							header : '单据类型',
							dataIndex : 'docType_txt',
							flex : 1
						}, {
							header : '单据号',
							dataIndex : 'docNo',
							flex : 1
						}, {
							header : '合同号',
							dataIndex : 'contractNo',
							flex : 1
						}, {
							header : '进仓单号',
							dataIndex : 'deliveryNote',
							flex : 1
						}, {
							header : '车号/卡号',
							dataIndex : 'plateNum',
							flex : 1
						}, {
							header : '批号',
							dataIndex : 'batchNo',
							flex : 1
						}, {
							header : '日期',
							dataIndex : 'docDate',
							xtype : 'datecolumn',
							format : 'Y-m-d',
							flex : 1
						}, {
							header : '工作号',
							dataIndex : 'workingNo',
							flex : 1
						}, {
							header : '备注',
							dataIndex : 'remark',
							flex : 4
						}];

				this.dockedItems = [{
							xtype : 'toolbar',
							items : [{
										iconCls : 'icon-add',
										text : 'Add',
										action: 'add'
										
										
										
									}, {
										iconCls : 'icon-delete',
										text : 'Delete',
										action : 'delete'
										
										
									}]
						}, {
							xtype : 'pagingtoolbar',
							displayInfo : true,
							store : 'OutgoingDocs',
							dock : 'bottom'
						}

				];

				this.callParent(arguments);
			}
		});