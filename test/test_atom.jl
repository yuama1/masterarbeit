@testset "Atom" begin

    a = ( number = 1,
        name = "my fancy atom", 
        element = Elements.H, 
        atomtype = "heavy",
        r = Vector3{Float64}(1.0, 2.0, 4.0),
        v = Vector3{Float64}(1.0,1.0,1.0),
        F = Vector3{Float64}(0.0,0.0,0.0),
        has_velocity = true,
        has_force = false,
        frame_id = 1,
        properties = Dict{String, Any}()
        )
    @test a isa Atom
    @test a.number == 1
    @test a.name == "my fancy atom"
    @test a.element == Elements.H
    @test a.atomtype == "heavy"
    @test a.r[1] == 1.0
    @test a.r[2] == 2.0
    @test a.r[3] == 4.0
    @test a.has_velocity
    @test !a.has_force
    @test a.frame_id == 1

end
