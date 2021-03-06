Ext.define('AM.model.contract.report.NoDelivery', {
			extend : 'Ext.data.Model',
			//idProperty: 'id',
			fields : [ {
						name : 'supplier',
						type : 'string'
						
					},{
						name : 'remark',
						type : 'string'
						
					},{
						name : 'contract_no',
						type : 'string'
					}, {
						name : 'contract_type',
						type : 'string'
					}, {
						name : 'sign_date',
						type : 'date',
						dateFormat : 'Y-m-d H:i:s'
					}, {
						name : 'model',
						type : 'string'
						
					},{
						name : 'quantity',
						type : 'float'
					},{
						name : 'quantity_in_receipt',
						type : 'float',
						convert:function(value, record){
							return record.get("quantity") - record.get("quantity_no_delivery");
						}
						
					},{
						name : 'quantity_no_delivery',
						type : 'float'
					},{
						name : 'quantity_afloat',
						type : 'float'
					},{
						name : 'unitPrice',
						type : 'float'
					},{
						name : 'id',
						type : 'int'
					}, {
						name : 'version',
						type : 'int'
					}]


		});