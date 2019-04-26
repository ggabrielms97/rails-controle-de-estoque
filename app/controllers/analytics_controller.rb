class AnalyticsController < ApplicationController

	def show
		
	end

	def result_stocking
		@res = Stocking.find_by_sql("select p.id, p.code, p.name, sp.numbering_id, 
										(select sum(sps.entry) 
										from stocking_products sps 
										where sps.product_id = p.id) as entrada, 
										p.min_stock, 
										(select sum(spo.out)
										from stocking_products spo
										where 
												 spo.product_id = p.id) as vendas
									from stocking_products sp
									inner join products p on p.id = sp.product_id
									

									group by p.id, sp.numbering_id
									order by p.name")

		head = "																																														Relatorio de stock"

		respond_to do |format|
          	format.html do
            	render  :pdf                    => "result_stocking",
	                    :layout                 => "layer_analytics",
	                    :orientation            => "Portrait",
	                    :margin => {:top        => '1.20in',
	                                :bottom     => '0.25in',
	                                :left       => '0.10in',
	                                :right      => '0.10in'},
	                    :header => {:font_name  => 'Lucida Console, Courier, Monotype, bold',
	                                :font_size  => 9,
	                                :left       => head,
	                                :spacing    => 25},
	                    :footer => {:font_name  => 'Lucida Console, Courier, Monotype, bold',
	                                :font_size  => 9,
	                                :right      => "Pagina [page] de [toPage]",
	                                :left       => "CHRONOS SOFTWARE - Fecha de la imprecion: #{Time.now.strftime("%d/%m/%Y")} Hora: #{Time.now.strftime("%H:%M:%S")} - Usuario: #{current_user.username}"}
        	 end
        end
	end

end