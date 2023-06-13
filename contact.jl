###
module Contact 

using GenieFramework
@genietools

@app begin
  @out message = "Contact us"
  @out email = "foo@bar.baz"

  @onchange isready begin
    @show "App is loaded"
  end
end

end
# end module Contact