class Job < ActiveRecord::Base
  validates_presence_of :company_name
  validates_presence_of :title
  validates_presence_of :job_type
  validates_presence_of :job_description
  validates_presence_of :hours_per_week
  validates_presence_of :pay_min
  validates_presence_of :applicant_experience
  validates_presence_of :how_to_apply

  searchable do
    text :title, :company_name
  end

  #def self.search(search)
      #record = find_by(company_name: search)
      #[record]
  #end

end