using Renderer, Test

@testset "Slow" begin
    @test_nowarn Renderer.Slow.test(false)
    @test_nowarn Renderer.Slow.test()
end

@testset "Fast" begin
    @test_nowarn Renderer.Fast.test(false)
    @test_nowarn Renderer.Fast.test()
end