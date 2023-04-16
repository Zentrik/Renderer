using Renderer, Test, SmartAsserts

@testset "Slow" begin
    @test_nowarn Renderer.test(false)
    @test_nowarn Renderer.test()
end

@testset "Assertions" begin
    SmartAsserts.set_enabled(false)

    @test_nowarn Renderer.Ray()
    @test_nowarn Renderer.Ray(direction = ones(Renderer.Point))

    @test_throws AssertionError Renderer.Ray(direction = zeros(Renderer.Point))
    @test_throws AssertionError Renderer.Ray(direction = Renderer.Point(0, 1, 1))
    @test_throws AssertionError Renderer.Ray(direction = Renderer.Point(0.060774088, 0.039998293, 0.8023627))
end