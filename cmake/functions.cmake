function(PREPEND var prefix files)
    set(tmpvar "")
    # Can't quote ${files}; that gives the ;-string!
    foreach(file ${files})
        # message(STATUS "file: ${file}")
        list(APPEND tmpvar "${prefix}/${file}")
    endforeach(file)
    set("${var}" "${tmpvar}" PARENT_SCOPE)
    # TODO is it better to replace the whole thing with
    #
    # string(REGEX REPLACE "([^;]+)" "${prefix}\\1" var "${files}")
endfunction(PREPEND)
