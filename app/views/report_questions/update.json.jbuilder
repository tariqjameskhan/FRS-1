# if @report_question.persisted?
#   json.form render(partial: "report_questions/form", formats: :html, locals: {company: @company, report: @report, report_question: report_q})
#   # json.inserted_item render(partial: "", formats: :html, locals: {report_question: @report_question})
# else
#   json.form render(partial: "report_questions/form", formats: :html, locals: {company: @company report: @report, report_question: @report_question})
# end
