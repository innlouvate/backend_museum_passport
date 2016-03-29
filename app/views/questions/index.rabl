collection @questions
  attributes :id, :description
  node(:answer) { |question| Answer.where(user_id: current_user.id, question_id: question.id).map {|answer| answer.entry}.pop }
  node(:answer_id) { |question| Answer.where(user_id: current_user.id, question_id: question.id).map {|answer| answer.id}.pop }

  # child :users do
  # child :answers do
  #   attributes :id, :entry
  # end

  # node :answer do
  #   Answer.where(user_id: current_user.id, question_id: :id)
  # end
