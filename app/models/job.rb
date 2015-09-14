class Job < ActiveRecord::Base
  def featured?
    return "Vaga em Destaque"
  end
end
