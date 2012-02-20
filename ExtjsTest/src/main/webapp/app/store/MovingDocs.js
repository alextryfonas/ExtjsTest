

Ext.define('AM.store.MovingDocs', {
			extend : 'Ext.data.ux.Store',
			model : 'AM.model.MaterialDoc',

			autoLoad : true,
			proxy : {
				type : 'rest',
				url : 'materialdocs/3',
				reader : {
					type : 'json',
					root : 'materialdocs',
					successProperty : 'success'
				},

				writer : {
					type : 'json',
					writeAllFields : true,
					root : ''
				}
			}
		});