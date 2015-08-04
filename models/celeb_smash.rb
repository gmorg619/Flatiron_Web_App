def params_converter(params)
  if params.keys[0] == "person"
    return params["person"]
  else
    string = params.keys[0]
    new_string = ""
    i = 0

    while string[i] != "." do
      new_string << string[i]
      i +=1
    end

    return new_string
  end

end




