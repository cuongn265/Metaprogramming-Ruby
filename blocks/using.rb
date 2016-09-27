module Kernel
  def using(resourse)
    begin
      yield
    ensure
      resourse.disposed
    end
  end
end
