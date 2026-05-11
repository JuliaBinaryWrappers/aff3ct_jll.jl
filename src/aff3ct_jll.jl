# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule aff3ct_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("aff3ct")
JLLWrappers.@generate_main_file("aff3ct", Base.UUID("85a5c246-4cb7-59af-af7a-717aeae34f9c"))
end  # module aff3ct_jll
