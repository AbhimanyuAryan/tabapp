module App

using GenieFramework
@genietools

# include("contact.jl")
# import .Contact

Genie.Renderers.Html.register_normal_element(:marquee)

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

@page("/", "app.jl.html")
@page("/about", "about.jl.html")
# @page("/contact", "contact.jl.html", 
#       Stipple.ReactiveTools.DEFAULT_LAYOUT(),
#       Core.eval(Contact, :(Stipple.ReactiveTools.@model())), 
#       Contact)

end
