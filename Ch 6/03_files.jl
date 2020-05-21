# Starting file system example for Learning Julia

# get the current workding dir
print("Current working directory: ")
println(pwd())

# read the contents of the current directory
print("Current directory contents: ")
println(readdir())

# open / create a file for writing
function createAFile(filename::String, text::String = "This is some text")
    io = open(filename, "w") # "w" indicates asking for writing permission
    write(io, text)
    close(io)
end
createAFile("Ch 6/03_files_test.txt", "Hello world!")

# open a file for reading
function readAFile(filename::String)
    io = open(filename, "r") # "r" indicates asking for read access
    content = read(io, String)
    println(content)
    close(io)
end
readAFile("Ch 6/03_files_test.txt")

# append data to an existing file
function appendToAFile(filename::String, text::String)
    io = open(filename, "a") # "a" indicates asking for append permission
    write(io, text)
    close(io)
end
appendToAFile("Ch 6/03_files_test.txt", "\nThis text was added")
readAFile("Ch 6/03_files_test.txt")

# rename an existing file
function renameAFile(oldfilename::String, newfilename::String)
    mv(oldfilename, newfilename, force = true)
end
renameAFile("Ch 6/03_files_test.txt", "Ch 6/03_files_test-renamed.txt")

# delete a file
rm("Ch 6/03_files_test-renamed.txt")
