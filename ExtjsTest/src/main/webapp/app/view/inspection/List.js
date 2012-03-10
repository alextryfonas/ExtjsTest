Ext.define('AM.view.inspection.List', {
			extend : 'Ext.grid.Panel',
			alias : 'widget.inspectionList',


			store : 'inspection.Inspections',

			requires : ['Ext.toolbar.TextItem', 'Ext.ux.grid.FiltersFeature'],

			iconCls : 'icon-grid',
			frame : true,

			initComponent : function() {
				this.columns = [{
							header : '合同号',
							dataIndex : 'contracts',
							filterable : true,
							flex : 1
						}, {
							header : '检验日期',
							dataIndex : 'inspectionDate',
							xtype : 'datecolumn',
							format : 'Y-m-d',
							filterable : true,
							flex : 1
						}, {
							header : '机构',
							dataIndex : 'authority',
							filterable : true,
							flex : 1
						}, {
							header : '编号',
							dataIndex : 'docNo',
							filterable : true,
							flex : 1
						}, {
							header : '收到证书',
							dataIndex : 'original',
							filterable : true,
							flex : 1
						}, {
							header : '备注',
							dataIndex : 'remark',
							filterable : true,
							flex : 4
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
							store : 'inspection.Inspections',
							dock : 'bottom'
						}

				];

				this.features = [{
							ftype : 'filters',
							encode : true, // json encode the filter query
							local : false
						}];

				this.callParent(arguments);
			}
		});