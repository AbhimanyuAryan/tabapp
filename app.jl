module App

using GenieFramework
@genietools

include("contact.jl")
import .Contact

include("home.jl")
import .Home

Genie.Renderers.Html.register_normal_element(:marquee)

@page("/about", "about.jl.html", Stipple.ReactiveTools.DEFAULT_LAYOUT(), Main.App.Home)
@page("/contact", "contact.jl.html", Stipple.ReactiveTools.DEFAULT_LAYOUT(), Main.App.Contact)
end
