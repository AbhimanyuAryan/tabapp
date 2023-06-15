module Home

using GenieFramework
@genietools

@app begin
  @out message = "Hello World!"
  @out test = 2
  @out greet = "Yoyo"
  # @out today = Dates.today()
  @out today = "Tue the 16th..."

  @onchange isready begin
    @show "App is loaded"
  end
end

@page("/", "home.jl.html")
end
