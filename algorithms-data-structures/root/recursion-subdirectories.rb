def find_directories(directory)
    Dir.foreach(directory) do |filename|
        _directory = "#{directory}/#{filename}"
        if File.directory?(_directory) && filename != "." && filename != ".."
            puts _directory
        end
    end
end
#goind to nth level requires adding n inner loops
#find_directories(".")


def find_directories_r(directory)
    Dir.foreach(directory) do |filename|
        _directory = "#{directory}/#{filename}"
        if File.directory?(_directory) && filename != "." && filename != ".."
            puts _directory
            find_directories_r(directory)
        end
    end
end

find_directories_r('.')
