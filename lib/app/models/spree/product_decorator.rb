Spree::Product.class_eval do
		after_save :sync_apfusion

		def sync_apfusion
			p 'SYNC APFUSION'
			p '.'*50
			p self.as_json
			p SpreeApfusion::Product.create(self.as_json)
			p '.'*50
		end
	end