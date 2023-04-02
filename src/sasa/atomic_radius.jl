# fest van der waals atomic radii for each element
# it can be adjust to atom type, when we have atom types

export AtomicRadius, get_radd!
const AtomicRadius = Dict{Symbol,Float64}(
        :H => 1.20,
        :He => 1.40,
        :Li => 1.82,
        :Be => 1.53,
        :B => 1.92,
        :C => 1.70,
        :N => 1.55,
        :O => 1.52,
        :F => 1.47,
        :Ne => 1.54,
        :Na => 2.27,
        :Mg => 1.73,
        :Al => 1.84,
        :Si => 2.10,
        :P => 1.80,
        :S => 1.80,
        :Cl => 1.75,
        :Ar => 1.88,
        :K => 2.75,
        :Ca => 2.31,
        :Sc => 2.11,
        :Ni => 1.63,
        :Cu => 1.40,
        :Zn => 1.39,
        :Ga => 1.87,
        :Ge => 2.11,
        :As => 1.85,
        :Se => 1.90,
        :Br => 1.85,
        :Kr => 2.02,
        :Rb => 3.03,
        :Sr => 2.49,
        :Pd => 1.63,
        :Ag => 1.72,
        :Cd => 1.58,
        :In => 1.93,
        :Sn => 2.17,
        :Sb => 2.06,
        :Te => 2.06,
        :I => 1.98,
        :Xe => 2.16,
        :Cs => 3.43,
        :Ba => 2.68,
        :Pt => 1.75,
        :Au => 1.66,
        :Hg => 1.55,
        :Tl => 1.96,
        :Pb => 2.02,
        :Bi => 2.07,
        :Po => 1.97,
        :At => 2.02,
        :Rn => 2.20,
        :Fr => 3.48,
        :Ra => 2.83,
        :U => 1.86,
        :W => 2.10,
        :Unknown => 0.0
)

function get_radius(e::Elements.T)
        AtomicRadius[Symbol(e)]
end

function get_radii!(atoms::DataFrame)
        transform!(atoms, :element => ByRow(x -> get_radius(x)) .=> :radii)
end