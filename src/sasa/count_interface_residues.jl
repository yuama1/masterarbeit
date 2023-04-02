export count_interface_residues

function count_interface_residues(interface::DataFrame)
        ala::Int = 0
        cys::Int = 0
        asp::Int = 0
        glu::Int = 0
        phe::Int = 0
        gly::Int = 0
        his::Int = 0
        ile::Int = 0
        lys::Int = 0
        leu::Int = 0
        met::Int = 0
        asn::Int = 0
        pro::Int = 0
        gln::Int = 0
        arg::Int = 0
        ser::Int = 0
        thr::Int = 0
        val::Int = 0
        trp::Int = 0
        tyr::Int = 0
        mse::Int = 0
        ace::Int = 0
        sep::Int = 0
        nh2::Int = 0
        tpo::Int = 0
        cso::Int = 0
        pca::Int = 0
        ptr::Int = 0
        cme::Int = 0
        kcx::Int = 0

        for i in eachrow(interface)
                if i[:residue_name] == "ala" || i[:residue_name] == "ALA"
                        ala += 1
                elseif i[:residue_name] == "cys" || i[:residue_name] == "CYS"
                        cys += 1
                elseif i[:residue_name] == "asp" || i[:residue_name] == "ASP"
                        asp += 1
                elseif i[:residue_name] == "glu" || i[:residue_name] == "GLU"
                        glu += 1
                elseif i[:residue_name] == "phe" || i[:residue_name] == "PHE"
                        phe += 1
                elseif i[:residue_name] == "gly" || i[:residue_name] == "GLY"
                        gly += 1
                elseif i[:residue_name] == "his" || i[:residue_name] == "HIS"
                        his += 1
                elseif i[:residue_name] == "ile" || i[:residue_name] == "ILE"
                        ile += 1
                elseif i[:residue_name] == "lys" || i[:residue_name] == "LYS"
                        lys += 1
                elseif i[:residue_name] == "leu" || i[:residue_name] == "LEU"
                        leu += 1
                elseif i[:residue_name] == "met" || i[:residue_name] == "MET"
                        met += 1
                elseif i[:residue_name] == "asn" || i[:residue_name] == "ASN"
                        asn += 1
                elseif i[:residue_name] == "pro" || i[:residue_name] == "PRO"
                        pro += 1
                elseif i[:residue_name] == "gln" || i[:residue_name] == "GLN"
                        gln += 1
                elseif i[:residue_name] == "arg" || i[:residue_name] == "ARG"
                        arg += 1
                elseif i[:residue_name] == "ser" || i[:residue_name] == "SER"
                        ser += 1
                elseif i[:residue_name] == "thr" || i[:residue_name] == "THR"
                        thr += 1
                elseif i[:residue_name] == "val" || i[:residue_name] == "VAL"
                        val += 1
                elseif i[:residue_name] == "trp" || i[:residue_name] == "TRP"
                        trp += 1
                elseif i[:residue_name] == "tyr" || i[:residue_name] == "TYR"
                        tyr += 1
                elseif i[:residue_name] == "mse" || i[:residue_name] == "MSE"
                        mse += 1
                elseif i[:residue_name] == "ace" || i[:residue_name] == "ACE"
                        ace += 1
                elseif i[:residue_name] == "sep" || i[:residue_name] == "SEP"
                        sep += 1
                elseif i[:residue_name] == "nh2" || i[:residue_name] == "NH2"
                        nh2 += 1
                elseif i[:residue_name] == "tpo" || i[:residue_name] == "TPO"
                        tpo += 1
                elseif i[:residue_name] == "cso" || i[:residue_name] == "CSO"
                        cso += 1
                elseif i[:residue_name] == "pca" || i[:residue_name] == "PCA"
                        pca += 1
                elseif i[:residue_name] == "ptr" || i[:residue_name] == "PTR"
                        ptr += 1
                elseif i[:residue_name] == "cme" || i[:residue_name] == "CME"
                        cme += 1
                elseif i[:residue_name] == "kcx" || i[:residue_name] == "KCX"
                        kcx += 1
                end
        end
        s = [ala cys asp  glu phe gly his ile lys leu met asn pro gln arg ser thr val trp tyr mse ace sep nh2 tpo cso pca ptr cme kcx]
        return s
end
count_interface_residues(interface::Interface) = count_interface_residues(interface.residues)