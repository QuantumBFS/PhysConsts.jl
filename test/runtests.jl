using PhysConsts
using Base.Test

# TODO: improve test coverage

@testset "Data File" begin
    datafile = DataFile("test.url", "directory", "filename")

    @test url(datafile) == "test.url"
    @test dirname(datafile) == abspath("directory")
    @test filename(datafile) == "filename"
    @test filepath(datafile) == joinpath(dirname(datafile), "filename")
end
