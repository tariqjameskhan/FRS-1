if @company.persisted?
  json.form render(partial: "companies/form", formats: :html, locals: {company: @company, company: Company.new})
else
  json.form render(partial: "companies/form", formats: :html, locals: {company: @company})
end
