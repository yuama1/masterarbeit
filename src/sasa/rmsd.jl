using DataFrames

#for rigid docking, where receptor has exactly the same orientation

function  rmsd(m1::DataFrame, m2::DataFrame, l::String)
        m1 = m1[in([l]).(m1.chain), : ][:,:r]
        m2 = m2[in([l]).(m2.chain), : ][:,:r]
        n = length(m1)
        @assert  length(m2) == n
        m = zip(m1,m2)
        
        r = sum(sum((i - h).^2) for (i,h) in m)/n
        r = sqrt(r)
end

rmsd(m1::PDBMolecule, m2::PDBMolecule, r::String, l::String) = rmsd(m1.atoms, m2.atoms, r::String, l::String)

# write for ZDock Benchmarks 
function  rmsd(m1::DataFrame, m2::DataFrame, l::String)
        # m1 is the true docked position of ligand
        m1 = m1[in([l]).(m1.chain), : ][:,:r]
        m2 = m2[in([l]).(m2.chain), : ][:,:r]
        n = length(m1)
        @assert  length(m2) == n
        m = zip(m1,m2)
        
        r = sum(sum((i - h).^2) for (i,h) in m)/n
        r = sqrt(r)
end


m1 = load_pdb("D:/Decoys2/input_pdbs/1avx.pdb");
m2 = load_pdb("D:/Decoys2/1AVX/complex.1.pdb");

m1= m1.atoms;
m2 =m2.atoms;

m1 = m1[in([l]).(m1.chain), : ]
m2 = m2[in([l]).(m2.chain), : ]

for i in 1:1227
        if m1[i,:name] != m2[i,:name]
                println(i)
                println(m1[i,:name] * "------" * m2[i,:name])
                break
        end
end

n = 1145
m1[n,:residue_id]
m2[n,:residue_id]

m1[n,:residue_name]
m2[n,:residue_name]
q = rmsd(m1,m2,"B")