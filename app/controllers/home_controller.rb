class HomeController < ApplicationController

  def index
    @jobs = Job.order "created_at desc"
	
  end

    def show
    @job = Job.find(params[:id])
    @company = Company.find(@job.company_id)
  end
end
