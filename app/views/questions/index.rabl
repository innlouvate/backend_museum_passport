collection @questions
  attributes :id, :description
  node(:answer) { |question| Answer.where(user_id: current_user.id, question_id: question.id).map {|answer| answer.entry}.pop }
  node(:answer_id) { |question| Answer.where(user_id: current_user.id, question_id: question.id).map {|answer| answer.id}.pop }
  node(:image) { |question| Answer.where(user_id: current_user.id, question_id: question.id).map {|answer| answer.image}.pop }
