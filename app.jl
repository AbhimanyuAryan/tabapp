module App

using GenieFramework
@genietools

include("contact.jl")
import .Contact

include("home.jl")
import .Home

Genie.Renderers.Html.register_normal_element(:marquee)

@page("/", "home.jl.html", Main.App.Home)
@page("/about", "about.jl.html", Main.App.Home)
@page("/contact", "contact.jl.html", Main.App.Contact)
end
