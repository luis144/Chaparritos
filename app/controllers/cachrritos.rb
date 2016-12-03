class Cachrritos::Controller < ApplicationController
	respond_to :jason
PER_PAGE_RECORDS = 10

def index
	kindles_paginated = kindle.order('id').page(params[:page]).per(PER_PAGE_RECORDS)
	jason_response ={
		models:kindles_paginated,
		current_page:params [:page].to_i,
		perPage:PER_PAGE_RECORDS,
		total_page:kindles_paginated.num_pages
	}

	respond_with jason_response, callback: params[:callback]
end
end
