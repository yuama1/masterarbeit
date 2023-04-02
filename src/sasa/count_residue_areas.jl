export count_residue_areas

function count_residue_areas(interface::DataFrame)
        ala::Float32 = 0.0
        cys::Float32 = 0.0
        asp::Float32 = 0.0
        glu::Float32 = 0.0
        phe::Float32 = 0.0
        gly::Float32 = 0.0
        his::Float32 = 0.0
        ile::Float32 = 0.0
        lys::Float32 = 0.0
        leu::Float32 = 0.0
        met::Float32 = 0.0
        asn::Float32 = 0.0
        pro::Float32 = 0.0
        gln::Float32 = 0.0
        arg::Float32 = 0.0
        ser::Float32 = 0.0
        thr::Float32 = 0.0
        val::Float32 = 0.0
        trp::Float32 = 0.0
        tyr::Float32 = 0.0
        mse::Float32 = 0.0
        ace::Float32 = 0.0
        sep::Float32 = 0.0
        nh2::Float32 = 0.0
        tpo::Float32 = 0.0
        cso::Float32 = 0.0
        pca::Float32 = 0.0
        ptr::Float32 = 0.0
        cme::Float32 = 0.0
        kcx::Float32 = 0.0

        for i in eachrow(interface)
                if i[:residue_name] == "ala" || i[:residue_name] == "ALA"
                        ala += i[:residue_bsa]
                elseif i[:residue_name] == "cys" || i[:residue_name] == "CYS"
                        cys += i[:residue_bsa]
                elseif i[:residue_name] == "asp" || i[:residue_name] == "ASP"
                        asp += i[:residue_bsa]
                elseif i[:residue_name] == "glu" || i[:residue_name] == "GLU"
                        glu += i[:residue_bsa]
                elseif i[:residue_name] == "phe" || i[:residue_name] == "PHE"
                        phe += i[:residue_bsa]
                elseif i[:residue_name] == "gly" || i[:residue_name] == "GLY"
                        gly += i[:residue_bsa]
                elseif i[:residue_name] == "his" || i[:residue_name] == "HIS"
                        his += i[:residue_bsa]
                elseif i[:residue_name] == "ile" || i[:residue_name] == "ILE"
                        ile += i[:residue_bsa]
                elseif i[:residue_name] == "lys" || i[:residue_name] == "LYS"
                        lys += i[:residue_bsa]
                elseif i[:residue_name] == "leu" || i[:residue_name] == "LEU"
                        leu += i[:residue_bsa]
                elseif i[:residue_name] == "met" || i[:residue_name] == "MET"
                        met += i[:residue_bsa]
                elseif i[:residue_name] == "asn" || i[:residue_name] == "ASN"
                        asn += i[:residue_bsa]
                elseif i[:residue_name] == "pro" || i[:residue_name] == "PRO"
                        pro += i[:residue_bsa]
                elseif i[:residue_name] == "gln" || i[:residue_name] == "GLN"
                        gln += i[:residue_bsa]
                elseif i[:residue_name] == "arg" || i[:residue_name] == "ARG"
                        arg += i[:residue_bsa]
                elseif i[:residue_name] == "ser" || i[:residue_name] == "SER"
                        ser += i[:residue_bsa]
                elseif i[:residue_name] == "thr" || i[:residue_name] == "THR"
                        thr += i[:residue_bsa]
                elseif i[:residue_name] == "val" || i[:residue_name] == "VAL"
                        val += i[:residue_bsa]
                elseif i[:residue_name] == "trp" || i[:residue_name] == "TRP"
                        trp += i[:residue_bsa]
                elseif i[:residue_name] == "tyr" || i[:residue_name] == "TYR"
                        tyr += i[:residue_bsa]
                elseif i[:residue_name] == "mse" || i[:residue_name] == "MSE"
                        mse += i[:residue_bsa]
                elseif i[:residue_name] == "ace" || i[:residue_name] == "ACE"
                        ace += i[:residue_bsa]
                elseif i[:residue_name] == "sep" || i[:residue_name] == "SEP"
                        sep += i[:residue_bsa]
                elseif i[:residue_name] == "nh2" || i[:residue_name] == "NH2"
                        nh2 += i[:residue_bsa]
                elseif i[:residue_name] == "tpo" || i[:residue_name] == "TPO"
                        tpo += i[:residue_bsa]
                elseif i[:residue_name] == "cso" || i[:residue_name] == "CSO"
                        cso += i[:residue_bsa]
                elseif i[:residue_name] == "pca" || i[:residue_name] == "PCA"
                        pca += i[:residue_bsa]
                elseif i[:residue_name] == "ptr" || i[:residue_name] == "PTR"
                        ptr += i[:residue_bsa]
                elseif i[:residue_name] == "cme" || i[:residue_name] == "CME"
                        cme += i[:residue_bsa]
                elseif i[:residue_name] == "kcx" || i[:residue_name] == "KCX"
                        kcx += i[:residue_bsa]
                end
        end
        s = [ala cys asp  glu phe gly his ile lys leu met asn pro gln arg ser thr val trp tyr mse ace sep nh2 tpo cso pca ptr cme kcx]
        return s
end

count_residue_areas(interface::Interface) = count_residue_areas(interface.residues)