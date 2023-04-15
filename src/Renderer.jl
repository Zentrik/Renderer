module Renderer

module Fast
include("Fast.jl")
end

module Slow
include("RayTracingInOneWeekend.jl")
end

end