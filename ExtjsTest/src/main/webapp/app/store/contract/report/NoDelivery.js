

Ext.define('AM.store.contract.report.NoDelivery', {
			extend : 'Ext.data.ux.Store',
			model : 'AM.model.contract.report.NoDelivery',
			remoteSort: true,

			proxy : {
				type : 'rest',
				url : 'reports/noDeliverys',
				reader : {
					type : 'json',
					root : 'noDeliverys',
					successProperty : 'success'
				}
			}
		});
