export count_interface_residue_pairs

function count_interface_residue_pairs(interface::DataFrame)
        s = zeros(Int64,1,465)

        for i in eachrow(interface)
                if i[:part1_residue_name] == "ALA"
                        if i[:residue_name] == "ALA"
                                # ala_ala 
                                s[1,1] += 1
                        elseif i[:residue_name] == "CYS"
                                # ala_cys 
                                s[1,2] += 1
                        elseif i[:residue_name] == "ASP"
                                # ala_asp
                                s[1,3] += 1
                        elseif i[:residue_name] == "GLU"
                                # ala_glu
                                s[1,4] += 1
                        elseif i[:residue_name] == "PHE"
                                # ala_phe 
                                s[1,5] += 1
                        elseif i[:residue_name] == "GLY"
                                # ala_gly
                                s[1,6] += 1
                        elseif i[:residue_name] == "HIS"
                                # ala_his
                                s[1,7] += 1
                        elseif i[:residue_name] == "ILE"
                                # ala_ile
                                s[1,8] += 1
                        elseif i[:residue_name] == "LYS"
                                # ala_lys
                                s[1,9] += 1
                        elseif i[:residue_name] == "LEU"
                                # ala_leu
                                s[1,10] += 1
                        elseif i[:residue_name] == "MET"
                                # ala_met
                                s[1,11] += 1
                        elseif i[:residue_name] == "ASN"
                                # ala_asn
                                s[1,12] += 1
                        elseif i[:residue_name] == "PRO"
                                # ala_pro
                                s[1,13] += 1
                        elseif i[:residue_name] == "GLN"
                                # ala_gln
                                s[1,14] += 1
                        elseif i[:residue_name] == "ARG"
                                # ala_arg
                                s[1,15] += 1
                        elseif i[:residue_name] == "SER"
                                # ala_ser
                                s[1,16] += 1
                        elseif i[:residue_name] == "THR"
                                # ala_thr
                                s[1,17] += 1
                        elseif i[:residue_name] == "VAL"
                                # ala_val
                                s[1,18] += 1
                        elseif i[:residue_name] == "TRP"
                                # ala_trp
                                s[1,19] += 1
                        elseif i[:residue_name] == "TYR"
                                # ala_tyr
                                s[1,20] += 1
                        elseif i[:residue_name] == "MSE"
                                # ala_mse
                                s[1,21] += 1
                        elseif i[:residue_name] == "ACE"
                                # ala_ace
                                s[1,22] += 1
                        elseif i[:residue_name] == "SEP"
                                # ala_sep
                                s[1,23] += 1
                        elseif i[:residue_name] == "NH2"
                                # ala_nh2
                                s[1,24] += 1
                        elseif i[:residue_name] == "TPO"
                                # ala_tpo
                                s[1,25] += 1
                        elseif i[:residue_name] == "CSO"
                                # ala_cso
                                s[1,26] += 1
                        elseif i[:residue_name] == "PCA"
                                # ala_pca
                                s[1,27] += 1
                        elseif i[:residue_name] == "PRT"
                                # ala_ptr
                                s[1,28] += 1
                        elseif i[:residue_name] == "CME"
                                # ala_cme
                                s[1,29] += 1
                        elseif i[:residue_name] == "KCX"
                                # ala_kcx
                                s[1,30] += 1
                        end

                elseif i[:part1_residue_name] == "CYS"
                        if i[:residue_name] == "ALA"
                                # ala_cys 
                                s[1,2] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_cys
                                s[1,31] += 1
                        elseif i[:residue_name] == "ASP"
                                # cys_asp
                                s[1,32] += 1
                        elseif i[:residue_name] == "GLU"
                                # cys_glu
                                s[1,33] += 1
                        elseif i[:residue_name] == "PHE"
                                # cys_phe
                                s[1,34] += 1
                        elseif i[:residue_name] == "GLY"
                                # cys_gly
                                s[1,35] += 1
                        elseif i[:residue_name] == "HIS"
                                # cys_his
                                s[1,36] += 1
                        elseif i[:residue_name] == "ILE"
                                # cys_ile
                                s[1,37] += 1
                        elseif i[:residue_name] == "LYS"
                                # cys_lys
                                s[1,38] += 1
                        elseif i[:residue_name] == "LEU"
                                # cys_leu
                                s[1,39] += 1
                        elseif i[:residue_name] == "MET"
                                # cys_met
                                s[1,40] += 1
                        elseif i[:residue_name] == "ASN"
                                # cys_asn
                                s[1,41] += 1
                        elseif i[:residue_name] == "PRO"
                                # cys_pro
                                s[1,42] += 1
                        elseif i[:residue_name] == "GLN"
                                # cys_gln
                                s[1,43] += 1
                        elseif i[:residue_name] == "ARG"
                                # cys_arg
                                s[1,44] += 1
                        elseif i[:residue_name] == "SER"
                                # cys_ser
                                s[1,45] += 1
                        elseif i[:residue_name] == "THR"
                                # cys_thr
                                s[1,46] += 1
                        elseif i[:residue_name] == "VAL"
                                # cys_val
                                s[1,47] += 1
                        elseif i[:residue_name] == "TRP"
                                # cys_trp
                                s[1,48] += 1
                        elseif i[:residue_name] == "TYR"
                                # cys_tyr
                                s[1,49] += 1
                        elseif i[:residue_name] == "MSE"
                                # cys_mse
                                s[1,50] += 1
                        elseif i[:residue_name] == "ACE"
                                # cys_ace
                                s[1,51] += 1
                        elseif i[:residue_name] == "SEP"
                                # cys_sep
                                s[1,52] += 1
                        elseif i[:residue_name] == "NH2"
                                # cys_nh2
                                s[1,53] += 1
                        elseif i[:residue_name] == "TPO"
                                # cys_tpo
                                s[1,54] += 1
                        elseif i[:residue_name] == "CSO"
                                # cys_cso
                                s[1,55] += 1
                        elseif i[:residue_name] == "PCA"
                                # cys_pca
                                s[1,56] += 1
                        elseif i[:residue_name] == "PTR"
                                # cys_ptr
                                s[1,57] += 1
                        elseif i[:residue_name] == "CME"
                                # cys_cme
                                s[1,58] += 1
                        elseif i[:residue_name] == "KCX"
                                # cys_kcx
                                s[1,59] += 1
                        end

                elseif i[:part1_residue_name] == "ASP"
                        if i[:residue_name] == "ALA"
                                # ala_asp
                                s[1,3] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_asp
                                s[1,32] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_asp
                                s[1,60] += 1
                        elseif i[:residue_name] == "GLU"
                                # asp_glu
                                s[1,61] += 1
                        elseif i[:residue_name] == "PHE"
                                # asp_phe
                                s[1,62] += 1
                        elseif i[:residue_name] == "GLY"
                                # asp_gly
                                s[1,63] += 1
                        elseif i[:residue_name] == "HIS"
                                # asp_his
                                s[1,64] += 1
                        elseif i[:residue_name] == "ILE"
                                # asp_ile
                                s[1,65] += 1
                        elseif i[:residue_name] == "LYS"
                                # asp_lys
                                s[1,66] += 1
                        elseif i[:residue_name] == "LEU"
                                # asp_leu
                                s[1,67] += 1
                        elseif i[:residue_name] == "MET"
                                # asp_met
                                s[1,68] += 1
                        elseif i[:residue_name] == "ASN"
                                # asp_asn
                                s[1,69] += 1
                        elseif i[:residue_name] == "PRO"
                                # asp_pro
                                s[1,70] += 1
                        elseif i[:residue_name] == "GLN"
                                # asp_gln
                                s[1,71] += 1
                        elseif i[:residue_name] == "ARG"
                                # asp_arg
                                s[1,72] += 1
                        elseif i[:residue_name] == "SER"
                                # asp_ser
                                s[1,73] += 1
                        elseif i[:residue_name] == "THR"
                                # asp_thr
                                s[1,74] += 1
                        elseif i[:residue_name] == "VAL"
                                # asp_val
                                s[1,75] += 1
                        elseif i[:residue_name] == "TRP"
                                # asp_trp
                                s[1,76] += 1
                        elseif i[:residue_name] == "TYR"
                                # asp_tyr
                                s[1,77] += 1
                        elseif i[:residue_name] == "MSE"
                                # asp_mse
                                s[1,78] += 1
                        elseif i[:residue_name] == "ACE"
                                # asp_ace
                                s[1,79] += 1
                        elseif i[:residue_name] == "SEP"
                                # asp_sep
                                s[1,80] += 1
                        elseif i[:residue_name] == "NH2"
                                # asp_nh2
                                s[1,81] += 1
                        elseif i[:residue_name] == "TPO"
                                # asp_tpo
                                s[1,82] += 1
                        elseif i[:residue_name] == "CSO"
                                # asp_cso
                                s[1,83] += 1
                        elseif i[:residue_name] == "PCA"
                                # asp_pca
                                s[1,84] += 1
                        elseif i[:residue_name] == "PTR"
                                # asp_ptr
                                s[1,85] += 1
                        elseif i[:residue_name] == "CME"
                                # asp_cme
                                s[1,86] += 1
                        elseif i[:residue_name] == "KCX"
                                # asp_kcx
                                s[1,87] += 1
                        end

                elseif i[:part1_residue_name] == "GLU"
                        if i[:residue_name] == "ALA"
                                # ala_glu
                                s[1,4] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_glu
                                s[1,33] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_glu
                                s[1,61] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_glu
                                s[1,88] += 1
                        elseif i[:residue_name] == "PHE"
                                # glu_phe
                                s[1,89] += 1
                        elseif i[:residue_name] == "GLY"
                                # glu_gly
                                s[1,90] += 1
                        elseif i[:residue_name] == "HIS"
                                # glu_his
                                s[1,91] += 1
                        elseif i[:residue_name] == "ILE"
                                # glu_ile
                                s[1,92] += 1
                        elseif i[:residue_name] == "LYS"
                                # glu_lys
                                s[1,93] += 1
                        elseif i[:residue_name] == "LEU"
                                # glu_leu
                                s[1,94] += 1
                        elseif i[:residue_name] == "MET"
                                # glu_met
                                s[1,95] += 1
                        elseif i[:residue_name] == "ASN"
                                # glu_asn
                                s[1,96] += 1
                        elseif i[:residue_name] == "PRO"
                                # glu_pro
                                s[1,97] += 1
                        elseif i[:residue_name] == "GLN"
                                # glu_gln
                                s[1,98] += 1
                        elseif i[:residue_name] == "ARG"
                                # glu_arg
                                s[1,99] += 1
                        elseif i[:residue_name] == "SER"
                                # glu_ser
                                s[1,100] += 1
                        elseif i[:residue_name] == "THR"
                                # glu_thr
                                s[1,101] += 1
                        elseif i[:residue_name] == "VAL"
                                # glu_val
                                s[1,102] += 1
                        elseif i[:residue_name] == "TRP"
                                # glu_trp
                                s[1,103] += 1
                        elseif i[:residue_name] == "TYR"
                                # glu_tyr
                                s[1,104] += 1
                        elseif i[:residue_name] == "MSE"
                                # glu_mse
                                s[1,105] += 1
                        elseif i[:residue_name] == "ACE"
                                # glu_ace
                                s[1,106] += 1
                        elseif i[:residue_name] == "SEP"
                                # glu_sep
                                s[1,107] += 1
                        elseif i[:residue_name] == "NH2"
                                # glu_nh2
                                s[1,108] += 1
                        elseif i[:residue_name] == "TPO"
                                # glu_tpo
                                s[1,109] += 1
                        elseif i[:residue_name] == "CSO"
                                # glu_cso
                                s[1,110] += 1
                        elseif i[:residue_name] == "PCA"
                                # glu_pca
                                s[1,111] += 1
                        elseif i[:residue_name] == "PTR"
                                # glu_ptr
                                s[1,112] += 1
                        elseif i[:residue_name] == "CME"
                                # glu_cme
                                s[1,113] += 1
                        elseif i[:residue_name] == "KCX"
                                # glu_kcx
                                s[1,114] += 1
                        end

                elseif i[:part1_residue_name] == "PHE"
                        if i[:residue_name] == "ALA"
                                # ala_phe
                                s[1,5] += 1
                        elseif i[:residue_name] == "CYS"      
                                # cys_phe
                                s[1,34] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_phe
                                s[1,62] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_phe
                                s[1,89] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_phe
                                s[1,115] += 1
                        elseif i[:residue_name] == "GLY"
                                # phe_gly
                                s[1,116] += 1
                        elseif i[:residue_name] == "HIS"
                                # phe_his
                                s[1,117] += 1
                        elseif i[:residue_name] == "ILE"
                                # phe_ile
                                s[1,118] += 1
                        elseif i[:residue_name] == "LYS"
                                # phe_lys
                                s[1,119] += 1
                        elseif i[:residue_name] == "LEU"
                                # phe_leu
                                s[1,120] += 1
                        elseif i[:residue_name] == "MET"
                                # phe_met
                                s[1,121] += 1
                        elseif i[:residue_name] == "ASN"
                                # phe_asn
                                s[1,122] += 1
                        elseif i[:residue_name] == "PRO"
                                # phe_pro
                                s[1,123] += 1
                        elseif i[:residue_name] == "GLN"
                                # phe_gln
                                s[1,124] += 1
                        elseif i[:residue_name] == "ARG"
                                # phe_arg
                                s[1,125] += 1
                        elseif i[:residue_name] == "SER"
                                # phe_ser
                                s[1,126] += 1
                        elseif i[:residue_name] == "THR"
                                # phe_thr
                                s[1,127] += 1
                        elseif i[:residue_name] == "VAL"
                                # phe_val
                                s[1,128] += 1
                        elseif i[:residue_name] == "TRP"
                                # phe_trp
                                s[1,129] += 1
                        elseif i[:residue_name] == "TYR"
                                # phe_tyr
                                s[1,130] += 1
                        elseif i[:residue_name] == "MSE"
                                # phe_mse
                                s[1,131] += 1
                        elseif i[:residue_name] == "ACE"
                                # phe_ace
                                s[1,132] += 1
                        elseif i[:residue_name] == "SEP"
                                # phe_sep
                                s[1,133] += 1
                        elseif i[:residue_name] == "NH2"
                                # phe_nh2
                                s[1,134] += 1
                        elseif i[:residue_name] == "TPO"
                                # phe_tpo
                                s[1,135] += 1
                        elseif i[:residue_name] == "CSO"
                                # phe_cso
                                s[1,136] += 1
                        elseif i[:residue_name] == "PCA"
                                # phe_pca
                                s[1,137] += 1
                        elseif i[:residue_name] == "PTR"
                                # phe_ptr
                                s[1,138] += 1
                        elseif i[:residue_name] == "CME"
                                # phe_cme
                                s[1,139] += 1
                        elseif i[:residue_name] == "KCX"
                                # phe_kcx
                                s[1,140] += 1
                        end

                elseif i[:part1_residue_name] == "GLY"
                        if i[:residue_name] == "ALA"
                                # ala_gly
                                s[1,6] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_gly
                                s[1,35] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_gly
                                s[1,63] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_gly
                                s[1,90] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_gly
                                s[1,116] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_gly
                                s[1,141] += 1
                        elseif i[:residue_name] == "HIS"
                                # gly_his
                                s[1,142] += 1
                        elseif i[:residue_name] == "ILE"
                                # gly_ile
                                s[1,143] += 1
                        elseif i[:residue_name] == "LYS"
                                # gly_lys
                                s[1,144] += 1
                        elseif i[:residue_name] == "LEU"
                                # gly_leu
                                s[1,145] += 1
                        elseif i[:residue_name] == "MET"
                                # gly_met
                                s[1,146] += 1
                        elseif i[:residue_name] == "ASN"
                                # gly_asn
                                s[1,147] += 1
                        elseif i[:residue_name] == "PRO"
                                # gly_pro
                                s[1,148] += 1
                        elseif i[:residue_name] == "GLN"
                                # gly_gln
                                s[1,149] += 1
                        elseif i[:residue_name] == "ARG"
                                # gly_arg
                                s[1,150] += 1
                        elseif i[:residue_name] == "SER"
                                # gly_ser
                                s[1,151] += 1
                        elseif i[:residue_name] == "THR"
                                # gly_thr
                                s[1,152] += 1
                        elseif i[:residue_name] == "VAL"
                                # gly_val
                                s[1,153] += 1
                        elseif i[:residue_name] == "TRP"
                                # gly_trp
                                s[1,154] += 1
                        elseif i[:residue_name] == "TYR"
                                # gly_tyr
                                s[1,155] += 1
                        elseif i[:residue_name] == "MSE"
                                # gly_mse
                                s[1,156] += 1
                        elseif i[:residue_name] == "ACE"
                                # gly_ace
                                s[1,157] += 1
                        elseif i[:residue_name] == "SEP"
                                # gly_sep
                                s[1,158] += 1
                        elseif i[:residue_name] == "NH2"
                                # gly_nh2
                                s[1,159] += 1
                        elseif i[:residue_name] == "TPO"
                                # gly_tpo
                                s[1,160] += 1
                        elseif i[:residue_name] == "CSO"
                                # gly_cso
                                s[1,161] += 1
                        elseif i[:residue_name] == "PCA"
                                # gly_pca
                                s[1,162] += 1
                        elseif i[:residue_name] == "PTR"
                                # gly_ptr
                                s[1,163] += 1
                        elseif i[:residue_name] == "CME"
                                # gly_cme
                                s[1,164] += 1
                        elseif i[:residue_name] == "KCX"
                                # gly_kcx
                                s[1,165] += 1
                        end

                elseif i[:part1_residue_name] == "HIS"
                        if i[:residue_name] == "ALA"
                                # ala_his
                                s[1,7] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_his
                                s[1,36] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_his
                                s[1,64] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_his
                                s[1,91] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_his
                                s[1,117] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_his
                                s[1,142] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_his
                                s[1,166] += 1
                        elseif i[:residue_name] == "ILE"
                                # his_ile
                                s[1,167] += 1
                        elseif i[:residue_name] == "LYS"
                                # his_lys
                                s[1,168] += 1
                        elseif i[:residue_name] == "LEU"
                                # his_leu
                                s[1,169] += 1
                        elseif i[:residue_name] == "MET"
                                # his_met
                                s[1,170] += 1
                        elseif i[:residue_name] == "ASN"
                                # his_asn
                                s[1,171] += 1
                        elseif i[:residue_name] == "PRO"
                                # his_pro
                                s[1,172] += 1
                        elseif i[:residue_name] == "GLN"
                                # his_gln
                                s[1,173] += 1
                        elseif i[:residue_name] == "ARG"
                                # his_arg
                                s[1,174] += 1
                        elseif i[:residue_name] == "SER"
                                # his_ser
                                s[1,175] += 1
                        elseif i[:residue_name] == "THR"
                                # his_thr
                                s[1,176] += 1
                        elseif i[:residue_name] == "VAL"
                                # his_val
                                s[1,177] += 1
                        elseif i[:residue_name] == "TRP"
                                # his_trp
                                s[1,178] += 1
                        elseif i[:residue_name] == "TYR"
                                # his_tyr
                                s[1,179] += 1
                        elseif i[:residue_name] == "MSE"
                                # his_mse
                                s[1,180] += 1
                        elseif i[:residue_name] == "ACE"
                                # his_ace
                                s[1,181] += 1
                        elseif i[:residue_name] == "SEP"
                                # his_sep
                                s[1,182] += 1
                        elseif i[:residue_name] == "NH2"
                                # his_nh2
                                s[1,183] += 1
                        elseif i[:residue_name] == "TPO"
                                # his_tpo
                                s[1,184] += 1
                        elseif i[:residue_name] == "CSO"
                                # his_cso
                                s[1,185] += 1
                        elseif i[:residue_name] == "PCA"
                                # his_pca
                                s[1,186] += 1
                        elseif i[:residue_name] == "PTR"
                                # his_ptr
                                s[1,187] += 1
                        elseif i[:residue_name] == "CME"
                                # his_cme
                                s[1,188] += 1
                        elseif i[:residue_name] == "KCX"
                                # his_kcx
                                s[1,189] += 1
                        end

                elseif i[:part1_residue_name] == "ILE"
                        if i[:residue_name] == "ALA"
                                # ala_ile
                                s[1,8] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_ile
                                s[1,37] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_ile
                                s[1,65] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_ile
                                s[1,92] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_ile
                                s[1,118] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_ile
                                s[1,143] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_ile
                                s[1,167] += 1 
                        elseif i[:residue_name] == "ILE"
                                # ile_ile
                                s[1,190] += 1
                        elseif i[:residue_name] == "LYS"
                                # ile_lys
                                s[1,191] += 1
                        elseif i[:residue_name] == "LEU"
                                # ile_leu
                                s[1,192] += 1
                        elseif i[:residue_name] == "MET"
                                # ile_met
                                s[1,193] += 1
                        elseif i[:residue_name] == "ASN"
                                # ile_asn
                                s[1,194] += 1
                        elseif i[:residue_name] == "PRO"
                                # ile_pro
                                s[1,195] += 1
                        elseif i[:residue_name] == "GLN"
                                # ile_gln
                                s[1,196] += 1
                        elseif i[:residue_name] == "ARG"
                                # ile_arg
                                s[1,197] += 1
                        elseif i[:residue_name] == "SER"
                                # ile_ser
                                s[1,198] += 1
                        elseif i[:residue_name] == "THR"
                                # ile_thr
                                s[1,199] += 1
                        elseif i[:residue_name] == "VAL"
                                # ile_val
                                s[1,200] += 1
                        elseif i[:residue_name] == "TRP"
                                # ile_trp
                                s[1,201] += 1
                        elseif i[:residue_name] == "TYR"
                                # ile_tyr
                                s[1,202] += 1
                        elseif i[:residue_name] == "MSE"
                                # ile_mse
                                s[1,203] += 1
                        elseif i[:residue_name] == "ACE"
                                # ile_ace
                                s[1,204] += 1
                        elseif i[:residue_name] == "SEP"
                                # ile_sep
                                s[1,205] += 1
                        elseif i[:residue_name] == "NH2"
                                # ile_nh2
                                s[1,206] += 1
                        elseif i[:residue_name] == "TPO"
                                # ile_tpo
                                s[1,207] += 1
                        elseif i[:residue_name] == "CSO"
                                # ile_cso
                                s[1,208] += 1
                        elseif i[:residue_name] == "PCA"
                                # ile_pca
                                s[1,209] += 1
                        elseif i[:residue_name] == "PTR"
                                # ile_ptr
                                s[1,210] += 1
                        elseif i[:residue_name] == "CME"
                                # ile_cme
                                s[1,211] += 1
                        elseif i[:residue_name] == "KCX"
                                # ile_kcx
                                s[1,212] += 1
                        end

                elseif i[:part1_residue_name] == "LYS"
                        if i[:residue_name] == "ALA"
                                # ala_lys
                                s[1,9] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_lys
                                s[1,38] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_lys
                                s[1,66] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_lys
                                s[1,93] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_lys
                                s[1,119] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_lys
                                s[1,144] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_lys
                                s[1,168] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_lys
                                s[1,191] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_lys
                                s[1,213] += 1
                        elseif i[:residue_name] == "LEU"
                                # lys_leu
                                s[1,214] += 1
                        elseif i[:residue_name] == "MET"
                                # lys_met
                                s[1,215] += 1
                        elseif i[:residue_name] == "ASN"
                                # lys_asn
                                s[1,216] += 1
                        elseif i[:residue_name] == "PRO"
                                # lys_pro
                                s[1,217] += 1
                        elseif i[:residue_name] == "GLN"
                                # lys_gln
                                s[1,218] += 1
                        elseif i[:residue_name] == "ARG"
                                # lys_arg
                                s[1,219] += 1
                        elseif i[:residue_name] == "SER"
                                # lys_ser
                                s[1,220] += 1
                        elseif i[:residue_name] == "THR"
                                # lys_thr
                                s[1,221] += 1
                        elseif i[:residue_name] == "VAL"
                                # lys_val
                                s[1,222] += 1
                        elseif i[:residue_name] == "TRP"
                                # lys_trp
                                s[1,223] += 1
                        elseif i[:residue_name] == "TYR"
                                # lys_tyr
                                s[1,224] += 1
                        elseif i[:residue_name] == "MSE"
                                # lys_mse
                                s[1,225] += 1
                        elseif i[:residue_name] == "ACE"
                                # lys_ace
                                s[1,226] += 1
                        elseif i[:residue_name] == "SEP"
                                # lys_sep
                                s[1,227] += 1
                        elseif i[:residue_name] == "NH2"
                                # lys_nh2
                                s[1,228] += 1
                        elseif i[:residue_name] == "TPO"
                                # lys_tpo
                                s[1,229] += 1
                        elseif i[:residue_name] == "CSO"
                                # lys_cso
                                s[1,230] += 1
                        elseif i[:residue_name] == "PCA"
                                # lys_pca
                                s[1,231] += 1
                        elseif i[:residue_name] == "PTR"
                                # lys_ptr
                                s[1,232] += 1
                        elseif i[:residue_name] == "CME"
                                # lys_cme
                                s[1,233] += 1
                        elseif i[:residue_name] == "KCX"
                                # lys_kcx
                                s[1,234] += 1
                        end

                elseif i[:part1_residue_name] == "LEU"
                        if i[:residue_name] == "ALA"
                                # ala_leu
                                s[1,10] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_leu
                                s[1,39] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_leu
                                s[1,67] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_leu
                                s[1,94] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_leu
                                s[1,120] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_leu
                                s[1,145] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_leu
                                s[1,169] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_leu
                                s[1,192] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_leu
                                s[1,214] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_leu
                                s[1,235] += 1
                        elseif i[:residue_name] == "MET"
                                # leu_met
                                s[1,236] += 1
                        elseif i[:residue_name] == "ASN"
                                # leu_asn
                                s[1,237] += 1
                        elseif i[:residue_name] == "PRO"
                                # leu_pro
                                s[1,238] += 1
                        elseif i[:residue_name] == "GLN"
                                # leu_gln
                                s[1,239] += 1
                        elseif i[:residue_name] == "ARG"
                                # leu_arg
                                s[1,240] += 1
                        elseif i[:residue_name] == "SER"
                                # leu_ser
                                s[1,241] += 1
                        elseif i[:residue_name] == "THR"
                                # leu_thr
                                s[1,242] += 1
                        elseif i[:residue_name] == "VAL"
                                # leu_val
                                s[1,243] += 1
                        elseif i[:residue_name] == "TRP"
                                # leu_trp
                                s[1,244] += 1
                        elseif i[:residue_name] == "TYR"
                                # leu_tyr
                                s[1,245] += 1
                        elseif i[:residue_name] == "MSE"
                                # leu_mse
                                s[1,246] += 1
                        elseif i[:residue_name] == "ACE"
                                # leu_ace
                                s[1,247] += 1
                        elseif i[:residue_name] == "SEP"
                                # leu_sep
                                s[1,248] += 1
                        elseif i[:residue_name] == "NH2"
                                # leu_nh2
                                s[1,249] += 1
                        elseif i[:residue_name] == "TPO"
                                # leu_tpo
                                s[1,250] += 1
                        elseif i[:residue_name] == "CSO"
                                # leu_cso
                                s[1,251] += 1
                        elseif i[:residue_name] == "PCA"
                                # leu_pca
                                s[1,252] += 1
                        elseif i[:residue_name] == "PTR"
                                # leu_ptr
                                s[1,253] += 1
                        elseif i[:residue_name] == "CME"
                                # leu_cme
                                s[1,254] += 1
                        elseif i[:residue_name] == "KCX"
                                # leu_kcx
                                s[1,255] += 1
                        end

                elseif i[:part1_residue_name] == "MET"
                        if i[:residue_name] == "ALA"
                                # ala_met
                                s[1,11] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_met
                                s[1,40] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_met
                                s[1,68] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_met
                                s[1,95] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_met
                                s[1,121] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_met
                                s[1,146] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_met
                                s[1,170] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_met
                                s[1,193] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_met
                                s[1,215] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_met
                                s[1,236] += 1
                        elseif i[:residue_name] == "MET"
                                # met_met
                                s[1,256] += 1
                        elseif i[:residue_name] == "ASN"
                                # met_asn
                                s[1,257] += 1
                        elseif i[:residue_name] == "PRO"
                                # met_pro
                                s[1,258] += 1
                        elseif i[:residue_name] == "GLN"
                                # met_gln
                                s[1,259] += 1
                        elseif i[:residue_name] == "ARG"
                                # met_arg
                                s[1,260] += 1
                        elseif i[:residue_name] == "SER"
                                # met_ser
                                s[1,261] += 1
                        elseif i[:residue_name] == "THR"
                                # met_thr
                                s[1,262] += 1
                        elseif i[:residue_name] == "VAL"
                                # met_val
                                s[1,263] += 1
                        elseif i[:residue_name] == "TRP"
                                # met_trp
                                s[1,264] += 1
                        elseif i[:residue_name] == "TYR"
                                # met_tyr
                                s[1,265] += 1
                        elseif i[:residue_name] == "MSE"
                                # met_mse
                                s[1,266] += 1
                        elseif i[:residue_name] == "ACE"
                                # met_ace
                                s[1,267] += 1
                        elseif i[:residue_name] == "SEP"
                                # met_sep
                                s[1,268] += 1
                        elseif i[:residue_name] == "NH2"
                                # met_nh2
                                s[1,269] += 1
                        elseif i[:residue_name] == "TPO"
                                # met_tpo
                                s[1,270] += 1
                        elseif i[:residue_name] == "CSO"
                                # met_cso
                                s[1,271] += 1
                        elseif i[:residue_name] == "PCA"
                                # met_pca
                                s[1,272] += 1
                        elseif i[:residue_name] == "PTR"
                                # met_ptr
                                s[1,273] += 1
                        elseif i[:residue_name] == "CME"
                                # met_cme
                                s[1,274] += 1
                        elseif i[:residue_name] == "KCX"
                                # met_kcx
                                s[1,275] += 1
                        end

                elseif i[:part1_residue_name] == "ASN"
                        if i[:residue_name] == "ALA"
                                # ala_asn
                                s[1,12] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_asn
                                s[1,41] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_asn
                                s[1,69] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_asn
                                s[1,96] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_asn
                                s[1,122] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_asn
                                s[1,147] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_asn
                                s[1,171] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_asn
                                s[1,194] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_asn
                                s[1,216] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_asn
                                s[1,237] += 1
                        elseif i[:residue_name] == "MET"
                                # met_asn
                                s[1,257] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_asn
                                s[1,276] += 1
                        elseif i[:residue_name] == "PRO"
                                # asn_pro
                                s[1,277] += 1
                        elseif i[:residue_name] == "GLN"
                                # asn_gln
                                s[1,278] += 1
                        elseif i[:residue_name] == "ARG"
                                # asn_arg
                                s[1,279] += 1
                        elseif i[:residue_name] == "SER"
                                # asn_ser
                                s[1,280] += 1
                        elseif i[:residue_name] == "THR"
                                # asn_thr
                                s[1,281] += 1
                        elseif i[:residue_name] == "VAL"
                                # asn_val
                                s[1,282] += 1
                        elseif i[:residue_name] == "TRP"
                                # asn_trp
                                s[1,283] += 1
                        elseif i[:residue_name] == "TYR"
                                # asn_tyr
                                s[1,284] += 1
                        elseif i[:residue_name] == "MSE"
                                # asn_mse
                                s[1,285] += 1
                        elseif i[:residue_name] == "ACE"
                                # asn_ace
                                s[1,286] += 1
                        elseif i[:residue_name] == "SEP"
                                # asn_sep
                                s[1,287] += 1
                        elseif i[:residue_name] == "NH2"
                                # asn_nh2
                                s[1,288] += 1
                        elseif i[:residue_name] == "TPO"
                                # asn_tpo
                                s[1,289] += 1
                        elseif i[:residue_name] == "CSO"
                                # asn_cso
                                s[1,290] += 1
                        elseif i[:residue_name] == "PCA"
                                # asn_pca
                                s[1,291] += 1
                        elseif i[:residue_name] == "PTR"
                                # asn_ptr
                                s[1,292] += 1
                        elseif i[:residue_name] == "CME"
                                # asn_cme
                                s[1,293] += 1
                        elseif i[:residue_name] == "KCX"
                                # asn_kcx
                                s[1,294] += 1
                        end

                elseif i[:part1_residue_name] == "PRO"
                        if i[:residue_name] == "ALA"
                                # ala_pro
                                s[1,13] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_pro
                                s[1,42] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_pro
                                s[1,70] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_pro
                                s[1,97] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_pro
                                s[1,123] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_pro
                                s[1,148] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_pro
                                s[1,172] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_pro
                                s[1,195] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_pro
                                s[1,217] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_pro
                                s[1,238] += 1
                        elseif i[:residue_name] == "MET"
                                # met_pro
                                s[1,258] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_pro
                                s[1,277] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_pro
                                s[1,295] += 1
                        elseif i[:residue_name] == "GLN"
                                # pro_gln
                                s[1,296] += 1
                        elseif i[:residue_name] == "ARG"
                                # pro_arg
                                s[1,297] += 1
                        elseif i[:residue_name] == "SER"
                                # pro_ser
                                s[1,298] += 1
                        elseif i[:residue_name] == "THR"
                                # pro_thr
                                s[1,299] += 1
                        elseif i[:residue_name] == "VAL"
                                # pro_val
                                s[1,300] += 1
                        elseif i[:residue_name] == "TRP"
                                # pro_trp
                                s[1,301] += 1
                        elseif i[:residue_name] == "TYR"
                                # pro_tyr
                                s[1,302] += 1
                        elseif i[:residue_name] == "MSE"
                                # pro_mse
                                s[1,303] += 1
                        elseif i[:residue_name] == "ACE"
                                # pro_ace
                                s[1,304] += 1
                        elseif i[:residue_name] == "SEP"
                                # pro_sep
                                s[1,305] += 1
                        elseif i[:residue_name] == "NH2"
                                # pro_nh2
                                s[1,306] += 1
                        elseif i[:residue_name] == "TPO"
                                # pro_tpo
                                s[1,307] += 1
                        elseif i[:residue_name] == "CSO"
                                # pro_cso
                                s[1,308] += 1
                        elseif i[:residue_name] == "PCA"
                                # pro_pca
                                s[1,309] += 1
                        elseif i[:residue_name] == "PTR"
                                # pro_ptr
                                s[1,310] += 1
                        elseif i[:residue_name] == "CME"
                                # pro_cme
                                s[1,311] += 1
                        elseif i[:residue_name] == "KCX"
                                # pro_kcx
                                s[1,312] += 1
                        end

                elseif i[:part1_residue_name] == "GLN"
                        if i[:residue_name] == "ALA"
                                # ala_gln
                                s[1,14] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_gln
                                s[1,43] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_gln
                                s[1,71] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_gln
                                s[1,98] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_gln
                                s[1,124] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_gln
                                s[1,149] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_gln
                                s[1,173] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_gln
                                s[1,196] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_gln
                                s[1,218] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_gln
                                s[1,239] += 1
                        elseif i[:residue_name] == "MET"
                                # met_gln
                                s[1,259] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_gln
                                s[1,278] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_gln
                                s[1,296] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_gln
                                s[1,313] += 1
                        elseif i[:residue_name] == "ARG"
                                # gln_arg
                                s[1,314] += 1
                        elseif i[:residue_name] == "SER"
                                # gln_ser
                                s[1,315] += 1
                        elseif i[:residue_name] == "THR"
                                # gln_thr
                                s[1,316] += 1
                        elseif i[:residue_name] == "VAL"
                                # gln_val
                                s[1,317] += 1
                        elseif i[:residue_name] == "TRP"
                                # gln_trp
                                s[1,318] += 1
                        elseif i[:residue_name] == "TYR"
                                # gln_tyr
                                s[1,319] += 1
                        elseif i[:residue_name] == "MSE"
                                # gln_mse
                                s[1,320] += 1
                        elseif i[:residue_name] == "ACE"
                                # gln_ace
                                s[1,321] += 1
                        elseif i[:residue_name] == "SEP"
                                # gln_sep
                                s[1,322] += 1
                        elseif i[:residue_name] == "NH2"
                                # gln_nh2
                                s[1,323] += 1
                        elseif i[:residue_name] == "TPO"
                                # gln_tpo
                                s[1,324] += 1
                        elseif i[:residue_name] == "CSO"
                                # gln_cso
                                s[1,325] += 1
                        elseif i[:residue_name] == "PCA"
                                # gln_pca
                                s[1,326] += 1
                        elseif i[:residue_name] == "PTR"
                                # gln_ptr
                                s[1,327] += 1
                        elseif i[:residue_name] == "CME"
                                # gln_cme
                                s[1,328] += 1
                        elseif i[:residue_name] == "KCX"
                                # gln_kcx
                                s[1,329] += 1
                        end

                elseif i[:part1_residue_name] == "ARG"
                        if i[:residue_name] == "ALA"
                                # ala_arg
                                s[1,15] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_arg
                                s[1,44] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_arg
                                s[1,72] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_arg
                                s[1,99] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_arg
                                s[1,125] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_arg
                                s[1,150] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_arg
                                s[1,174] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_arg
                                s[1,197] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_arg
                                s[1,219] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_arg
                                s[1,240] += 1
                        elseif i[:residue_name] == "MET"
                                # met_arg
                                s[1,260] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_arg
                                s[1,279] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_arg
                                s[1,297] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_arg
                                s[1,314] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_arg
                                s[1,330] += 1
                        elseif i[:residue_name] == "SER"
                                # arg_ser
                                s[1,331] += 1
                        elseif i[:residue_name] == "THR"
                                # arg_thr
                                s[1,332] += 1
                        elseif i[:residue_name] == "VAL"
                                # arg_val
                                s[1,333] += 1
                        elseif i[:residue_name] == "TRP"
                                # arg_trp
                                s[1,334] += 1
                        elseif i[:residue_name] == "TYR"
                                # arg_tyr
                                s[1,335] += 1
                        elseif i[:residue_name] == "MSE"
                                # arg_mse
                                s[1,336] += 1
                        elseif i[:residue_name] == "ACE"
                                # arg_ace
                                s[1,337] += 1
                        elseif i[:residue_name] == "SEP"
                                # arg_sep
                                s[1,338] += 1
                        elseif i[:residue_name] == "NH2"
                                # arg_nh2
                                s[1,339] += 1
                        elseif i[:residue_name] == "TPO"
                                # arg_tpo
                                s[1,340] += 1
                        elseif i[:residue_name] == "CSO"
                                # arg_cso
                                s[1,341] += 1
                        elseif i[:residue_name] == "PCA"
                                # arg_pca
                                s[1,342] += 1
                        elseif i[:residue_name] == "PTR"
                                # arg_ptr
                                s[1,343] += 1
                        elseif i[:residue_name] == "CME"
                                # arg_cme
                                s[1,344] += 1
                        elseif i[:residue_name] == "KCX"
                                # arg_kcx
                                s[1,345] += 1
                        end

                elseif i[:part1_residue_name] == "SER"
                        if i[:residue_name] == "ALA"
                                # ala_ser
                                s[1,16] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_ser
                                s[1,45] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_ser
                                s[1,73] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_ser
                                s[1,100] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_ser
                                s[1,126] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_ser
                                s[1,151] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_ser
                                s[1,175] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_ser
                                s[1,198] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_ser
                                s[1,220] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_ser
                                s[1,241] += 1
                        elseif i[:residue_name] == "MET"
                                # met_ser
                                s[1,261] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_ser
                                s[1,280] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_ser
                                s[1,298] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_ser
                                s[1,315] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_ser
                                s[1,331] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_ser
                                s[1,346] += 1
                        elseif i[:residue_name] == "THR"
                                # ser_thr
                                s[1,347] += 1
                        elseif i[:residue_name] == "VAL"
                                # ser_val
                                s[1,348] += 1
                        elseif i[:residue_name] == "TRP"
                                # ser_trp
                                s[1,349] += 1
                        elseif i[:residue_name] == "TYR"
                                # ser_tyr
                                s[1,350] += 1
                        elseif i[:residue_name] == "MSE"
                                # ser_mse
                                s[1,351] += 1
                        elseif i[:residue_name] == "ACE"
                                # ser_ace
                                s[1,352] += 1
                        elseif i[:residue_name] == "SEP"
                                # ser_sep
                                s[1,353] += 1
                        elseif i[:residue_name] == "NH2"
                                # ser_nh2
                                s[1,354] += 1
                        elseif i[:residue_name] == "TPO"
                                # ser_tpo
                                s[1,355] += 1
                        elseif i[:residue_name] == "CSO"
                                # ser_cso
                                s[1,356] += 1
                        elseif i[:residue_name] == "PCA"
                                # ser_pca
                                s[1,357] += 1
                        elseif i[:residue_name] == "PTR"
                                # ser_ptr
                                s[1,358] += 1
                        elseif i[:residue_name] == "CME"
                                # ser_cme
                                s[1,359] += 1
                        elseif i[:residue_name] == "KCX"
                                # ser_kcx
                                s[1,360] += 1
                        end

                elseif i[:part1_residue_name] == "THR"
                        if i[:residue_name] == "ALA"
                                # ala_thr
                                s[1,17] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_thr
                                s[1,46] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_thr
                                s[1,74] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_thr
                                s[1,101] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_thr
                                s[1,127] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_thr
                                s[1,152] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_thr
                                s[1,176] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_thr
                                s[1,199] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_thr
                                s[1,221] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_thr
                                s[1,242] += 1
                        elseif i[:residue_name] == "MET"
                                # met_thr
                                s[1,262] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_thr
                                s[1,281] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_thr
                                s[1,299] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_thr
                                s[1,316] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_thr
                                s[1,332] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_thr
                                s[1,347] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_thr
                                s[1,361] += 1
                        elseif i[:residue_name] == "VAL"
                                # thr_val
                                s[1,362] += 1
                        elseif i[:residue_name] == "TRP"
                                # thr_trp
                                s[1,363] += 1
                        elseif i[:residue_name] == "TYR"
                                # thr_tyr
                                s[1,364] += 1
                        elseif i[:residue_name] == "MSE"
                                # thr_mse
                                s[1,365] += 1
                        elseif i[:residue_name] == "ACE"
                                # thr_ace
                                s[1,366] += 1
                        elseif i[:residue_name] == "SEP"
                                # thr_sep
                                s[1,367] += 1
                        elseif i[:residue_name] == "NH2"
                                # thr_nh2
                                s[1,368] += 1
                        elseif i[:residue_name] == "TPO"
                                # thr_tpo
                                s[1,369] += 1
                        elseif i[:residue_name] == "CSO"
                                # thr_cso
                                s[1,370] += 1
                        elseif i[:residue_name] == "PCA"
                                # thr_pca
                                s[1,371] += 1
                        elseif i[:residue_name] == "PTR"
                                # thr_ptr
                                s[1,372] += 1
                        elseif i[:residue_name] == "CME"
                                # thr_cme
                                s[1,373] += 1
                        elseif i[:residue_name] == "KCX"
                                # thr_kcx
                                s[1,374] += 1
                        end

                elseif i[:part1_residue_name] == "VAL" 
                        if i[:residue_name] == "ALA"
                                # ala_val
                                s[1,18] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_val
                                s[1,47] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_val
                                s[1,75] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_val
                                s[1,102] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_val
                                s[1,128] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_val
                                s[1,153] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_val
                                s[1,177] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_val
                                s[1,200] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_val
                                s[1,222] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_val
                                s[1,243] += 1
                        elseif i[:residue_name] == "MET"
                                # met_val
                                s[1,263] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_val
                                s[1,282] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_val
                                s[1,300] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_val
                                s[1,317] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_val
                                s[1,333] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_val
                                s[1,348] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_val
                                s[1,362] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_val
                                s[1,375] += 1
                        elseif i[:residue_name] == "TRP"
                                # val_trp
                                s[1,376] += 1
                        elseif i[:residue_name] == "TYR"
                                # val_tyr
                                s[1,377] += 1
                        elseif i[:residue_name] == "MSE"
                                # val_mse
                                s[1,378] += 1
                        elseif i[:residue_name] == "ACE"
                                # val_ace
                                s[1,379] += 1
                        elseif i[:residue_name] == "SEP"
                                # val_sep
                                s[1,380] += 1
                        elseif i[:residue_name] == "NH2"
                                # val_nh2
                                s[1,381] += 1
                        elseif i[:residue_name] == "TPO"
                                # val_tpo
                                s[1,382] += 1
                        elseif i[:residue_name] == "CSO"
                                # val_cso
                                s[1,383] += 1
                        elseif i[:residue_name] == "PCA"
                                # val_pca
                                s[1,384] += 1
                        elseif i[:residue_name] == "PTR"
                                # val_ptr
                                s[1,385] += 1
                        elseif i[:residue_name] == "CME"
                                # val_cme
                                s[1,386] += 1
                        elseif i[:residue_name] == "KCX"
                                # val_kcx
                                s[1,387] += 1
                        end

                elseif i[:part1_residue_name] == "TRP"
                        if i[:residue_name] == "ALA"
                                # ala_trp
                                s[1,19] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_trp
                                s[1,48] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_trp
                                s[1,76] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_trp
                                s[1,103] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_trp
                                s[1,129] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_trp
                                s[1,154] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_trp
                                s[1,178] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_trp
                                s[1,201] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_trp
                                s[1,223] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_trp
                                s[1,244] += 1
                        elseif i[:residue_name] == "MET"
                                # met_trp
                                s[1,264] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_trp
                                s[1,283] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_trp
                                s[1,301] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_trp
                                s[1,318] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_trp
                                s[1,334] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_trp
                                s[1,349] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_trp
                                s[1,363] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_trp
                                s[1,376] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_trp
                                s[1,388] += 1
                        elseif i[:residue_name] == "TYR"
                                # trp_tyr
                                s[1,389] += 1
                        elseif i[:residue_name] == "MSE"
                                # trp_mse
                                s[1,390] += 1
                        elseif i[:residue_name] == "ACE"
                                # trp_ace
                                s[1,391] += 1
                        elseif i[:residue_name] == "SEP"
                                # trp_sep
                                s[1,392] += 1
                        elseif i[:residue_name] == "NH2"
                                # trp_nh2
                                s[1,393] += 1
                        elseif i[:residue_name] == "TPO"
                                # trp_tpo
                                s[1,394] += 1
                        elseif i[:residue_name] == "CSO"
                                # trp_cso
                                s[1,395] += 1
                        elseif i[:residue_name] == "PCA"
                                # trp_pca
                                s[1,396] += 1
                        elseif i[:residue_name] == "PTR"
                                # trp_ptr
                                s[1,397] += 1
                        elseif i[:residue_name] == "CME"
                                # trp_cme
                                s[1,398] += 1
                        elseif i[:residue_name] == "KCX"
                                # trp_kcx
                                s[1,399] += 1
                        end

                elseif i[:part1_residue_name] == "TYR"
                        if i[:residue_name] == "ALA"
                                # ala_tyr
                                s[1,20] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_tyr
                                s[1,49] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_tyr
                                s[1,77] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_tyr
                                s[1,104] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_tyr
                                s[1,130] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_tyr
                                s[1,155] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_tyr
                                s[1,179] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_tyr
                                s[1,202] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_tyr
                                s[1,224] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_tyr
                                s[1,245] += 1
                        elseif i[:residue_name] == "MET"
                                # met_tyr
                                s[1,265] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_tyr
                                s[1,284] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_tyr
                                s[1,302] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_tyr
                                s[1,319] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_tyr
                                s[1,335] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_tyr
                                s[1,350] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_tyr
                                s[1,364] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_tyr
                                s[1,377] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_tyr
                                s[1,389] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_tyr
                                s[1,400] += 1
                        elseif i[:residue_name] == "MSE"
                                # tyr_mse
                                s[1,401] += 1
                        elseif i[:residue_name] == "ACE"
                                # tyr_ace
                                s[1,402] += 1
                        elseif i[:residue_name] == "SEP"
                                # tyr_sep
                                s[1,403] += 1
                        elseif i[:residue_name] == "NH2"
                                # tyr_nh2
                                s[1,404] += 1
                        elseif i[:residue_name] == "TPO"
                                # tyr_tpo
                                s[1,405] += 1
                        elseif i[:residue_name] == "CSO"
                                # tyr_cso
                                s[1,406] += 1
                        elseif i[:residue_name] == "PCA"
                                # tyr_pca
                                s[1,407] += 1
                        elseif i[:residue_name] == "PTR"
                                # tyr_ptr
                                s[1,408] += 1
                        elseif i[:residue_name] == "CME"
                                # tyr_cme
                                s[1,409] += 1
                        elseif i[:residue_name] == "KCX"
                                # tyr_kcx
                                s[1,410] += 1
                        end

                elseif i[:part1_residue_name] == "MSE"
                        if i[:residue_name] == "ALA"
                                # ala_mse
                                s[1,21] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_mse
                                s[1,50] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_mse
                                s[1,78] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_mse
                                s[1,105] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_mse
                                s[1,131] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_mse
                                s[1,156] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_mse
                                s[1,180] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_mse
                                s[1,203] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_mse
                                s[1,225] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_mse
                                s[1,246] += 1
                        elseif i[:residue_name] == "MET"
                                # met_mse
                                s[1,266] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_mse
                                s[1,285] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_mse
                                s[1,303] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_mse
                                s[1,320] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_mse
                                s[1,336] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_mse
                                s[1,351] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_mse
                                s[1,365] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_mse
                                s[1,378] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_mse
                                s[1,390] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_mse
                                s[1,401] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_mse
                                s[1,410] += 1
                        elseif i[:residue_name] == "ACE"
                                # mse_ace
                                s[1,411] += 1
                        elseif i[:residue_name] == "SEP"
                                # mse_sep
                                s[1,412] += 1
                        elseif i[:residue_name] == "NH2"
                                # mse_nh2
                                s[1,413] += 1
                        elseif i[:residue_name] == "TPO"
                                # mse_tpo
                                s[1,414] += 1
                        elseif i[:residue_name] == "CSO"
                                # mse_cso
                                s[1,415] += 1
                        elseif i[:residue_name] == "PCA"
                                # mse_pca
                                s[1,416] += 1
                        elseif i[:residue_name] == "PTR"
                                # mse_ptr
                                s[1,418] += 1
                        elseif i[:residue_name] == "CME"
                                # mse_cme
                                s[1,419] += 1
                        elseif i[:residue_name] == "KCX"
                                # mse_kcx
                                s[1,420] += 1
                        end

                elseif i[:part1_residue_name] == "ACE"
                        if i[:residue_name] == "ALA"
                                # ala_ace
                                s[1,22] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_ace
                                s[1,51] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_ace
                                s[1,79] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_ace
                                s[1,106] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_ace
                                s[1,132] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_ace
                                s[1,157] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_ace
                                s[1,181] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_ace
                                s[1,204] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_ace
                                s[1,226] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_ace
                                s[1,247] += 1
                        elseif i[:residue_name] == "MET"
                                # met_ace
                                s[1,267] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_ace
                                s[1,286] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_ace
                                s[1,304] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_ace
                                s[1,321] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_ace
                                s[1,337] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_ace
                                s[1,352] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_ace
                                s[1,366] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_ace
                                s[1,379] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_ace
                                s[1,391] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_ace
                                s[1,402] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_ace
                                s[1,411] += 1
                        elseif i[:residue_name] == "ACE"
                                # ace_ace
                                s[1,421] += 1
                        elseif i[:residue_name] == "SEP"
                                # ace_sep
                                s[1,422] += 1
                        elseif i[:residue_name] == "NH2"
                                # ace_nh2
                                s[1,423] += 1
                        elseif i[:residue_name] == "TPO"
                                # ace_tpo
                                s[1,424] += 1
                        elseif i[:residue_name] == "CSO"
                                # ace_cso
                                s[1,425] += 1
                        elseif i[:residue_name] == "PCA"
                                # ace_pca
                                s[1,426] += 1
                        elseif i[:residue_name] == "PTR"
                                # ace_ptr
                                s[1,427] += 1
                        elseif i[:residue_name] == "CME"
                                # ace_cme
                                s[1,428] += 1
                        elseif i[:residue_name] == "MSE"
                                # ace_kcx
                                s[1,429] += 1
                        end

                elseif i[:part1_residue_name] == "SEP"
                        if i[:residue_name] == "ALA"
                                # ala_sep
                                s[1,23] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_sep
                                s[1,52] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_sep
                                s[1,80] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_sep
                                s[1,107] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_sep
                                s[1,133] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_sep
                                s[1,158] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_sep
                                s[1,182] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_sep
                                s[1,205] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_sep
                                s[1,227] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_sep
                                s[1,248] += 1
                        elseif i[:residue_name] == "MET"
                                # met_sep
                                s[1,268] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_sep
                                s[1,287] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_sep
                                s[1,305] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_sep
                                s[1,322] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_sep
                                s[1,338] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_sep
                                s[1,353] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_sep
                                s[1,367] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_sep
                                s[1,380] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_sep
                                s[1,392] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_sep
                                s[1,403] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_sep
                                s[1,412] += 1
                        elseif i[:residue_name] == "ACE"
                                # ace_sep
                                s[1,422] += 1
                        elseif  i[:residue_name] == "SEP"
                                # sep_sep
                                s[1,430] += 1
                        elseif  i[:residue_name] == "NH2"
                                # sep_nh2
                                s[1,431] += 1
                        elseif i[:residue_name] == "TPO"
                                # sep_tpo
                                s[1,432] += 1
                        elseif i[:residue_name] == "CSO"
                                # sep_cso
                                s[1,433] += 1
                        elseif i[:residue_name] == "PCA"
                                # sep_pca
                                s[1,434] += 1
                        elseif i[:residue_name] == "PTR"
                                # sep_ptr
                                s[1,435] += 1
                        elseif i[:residue_name] == "CME"
                                # sep_cme
                                s[1,436] += 1
                        elseif i[:residue_name] == "KCX"
                                # sep_kcx
                                s[1,437] += 1
                        end
                        
                elseif i[:part1_residue_name] == "NH2"
                        if i[:residue_name] == "ALA"
                                # ala_nh2
                                s[1,24] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_nh2
                                s[1,53] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_nh2
                                s[1,81] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_nh2
                                s[1,108] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_nh2
                                s[1,134] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_nh2
                                s[1,159] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_nh2
                                s[1,183] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_nh2
                                s[1,206] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_nh2
                                s[1,228] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_nh2
                                s[1,249] += 1
                        elseif i[:residue_name] == "MET"
                                # met_nh2
                                s[1,269] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_nh2
                                s[1,288] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_nh2
                                s[1,306] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_nh2
                                s[1,323] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_nh2
                                s[1,339] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_nh2
                                s[1,354] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_nh2
                                s[1,368] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_nh2
                                s[1,381] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_nh2
                                s[1,393] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_nh2
                                s[1,404] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_nh2
                                s[1,413] += 1
                        elseif i[:residue_name] == "ACE"
                                # ace_nh2
                                s[1,423] += 1
                        elseif i[:residue_name] == "SEP"
                                # sep_nh2
                                s[1,431] += 1
                        elseif i[:residue_name] == "NH2"
                                # nh2_nh2
                                s[1,438] += 1
                        elseif i[:residue_name] == "TPO"
                                # nh2_tpo
                                s[1,439] += 1
                        elseif i[:residue_name] == "CSO"
                                # nh2_cso
                                s[1,440] += 1
                        elseif i[:residue_name] == "PCA"
                                # nh2_pca
                                s[1,441] += 1
                        elseif i[:residue_name] == "PTR"
                                # nh2_ptr
                                s[1,442] += 1
                        elseif i[:residue_name] == "CME"
                                # nh2_cme
                                s[1,443] += 1
                        elseif i[:residue_name] == "KCX"
                                # nh2_kcx
                                s[1,444] += 1
                        end

                elseif i[:part1_residue_name] == "TPO"
                        if i[:residue_name] == "ALA"
                                # ala_tpo
                                s[1,25] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_tpo
                                s[1,54] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_tpo
                                s[1,82] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_tpo
                                s[1,109] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_tpo
                                s[1,135] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_tpo
                                s[1,160] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_tpo
                                s[1,184] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_tpo
                                s[1,207] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_tpo
                                s[1,229] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_tpo
                                s[1,250] += 1
                        elseif i[:residue_name] == "MET"
                                # met_tpo
                                s[1,270] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_tpo
                                s[1,289] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_tpo
                                s[1,307] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_tpo
                                s[1,324] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_tpo
                                s[1,340] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_tpo
                                s[1,355] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_tpo
                                s[1,369] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_tpo
                                s[1,382] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_tpo
                                s[1,394] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_tpo
                                s[1,405] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_tpo
                                s[1,414] += 1
                        elseif i[:residue_name] == "ACE"
                                # ace_tpo
                                s[1,424] += 1
                        elseif i[:residue_name] == "SEP"
                                # sep_tpo
                                s[1,432] += 1
                        elseif i[:residue_name] == "NH2"
                                # nh2_tpo
                                s[1,439] += 1
                        elseif i[:residue_name] == "TPO"
                                # tpo_tpo
                                s[1,445] += 1
                        elseif i[:residue_name] == "CSO"
                                # tpo_cso
                                s[1,446] += 1
                        elseif i[:residue_name] == "PCA"
                                # tpo_pca
                                s[1,447] += 1
                        elseif i[:residue_name] == "PTR"
                                # tpo_ptr
                                s[1,448] += 1
                        elseif i[:residue_name] == "CME"
                                # tpo_cme
                                s[1,449] += 1
                        elseif i[:residue_name] == "KCX"
                                # tpo_kcx
                                s[1,450] += 1
                        end

                elseif i[:part1_residue_name] == "CSO"
                        if i[:residue_name] == "ALA"
                                # ala_cso
                                s[1,26] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_cso
                                s[1,55] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_cso
                                s[1,83] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_cso
                                s[1,110] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_cso
                                s[1,136] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_cso
                                s[1,161] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_cso
                                s[1,185] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_cso
                                s[1,208] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_cso
                                s[1,230] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_cso
                                s[1,251] += 1
                        elseif i[:residue_name] == "MET"
                                # met_cso
                                s[1,271] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_cso
                                s[1,290] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_cso
                                s[1,308] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_cso
                                s[1,325] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_cso
                                s[1,341] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_cso
                                s[1,356] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_cso
                                s[1,370] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_cso
                                s[1,383] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_cso
                                s[1,395] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_cso
                                s[1,406] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_cso
                                s[1,415] += 1
                        elseif i[:residue_name] == "ACE"
                                # ace_cso
                                s[1,425] += 1
                        elseif i[:residue_name] == "SEP"
                                # sep_cso
                                s[1,433] += 1
                        elseif i[:residue_name] == "NH2"
                                # nh2_cso
                                s[1,440] += 1
                        elseif i[:residue_name] == "TPO"
                                # tpo_cso
                                s[1,446] += 1
                        elseif i[:residue_name] == "CSO"
                                # cso_cso
                                s[1,451] += 1
                        elseif i[:residue_name] == "PCA"
                                # cso_pca
                                s[1,452] += 1
                        elseif i[:residue_name] == "PTR"
                                # cso_ptr
                                s[1,453] += 1
                        elseif i[:residue_name] == "CME"
                                # cso_cme
                                s[1,454] += 1
                        elseif i[:residue_name] == "KCX"
                                # cso_kcx
                                s[1,455] += 1
                        end
                        
                elseif i[:part1_residue_name] == "PCA"
                        if i[:residue_name] == "ALA"
                                # ala_pca
                                s[1,27] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_pca
                                s[1,56] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_pca
                                s[1,84] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_pca
                                s[1,111] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_pca
                                s[1,137] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_pca
                                s[1,162] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_pca
                                s[1,186] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_pca
                                s[1,209] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_pca
                                s[1,231] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_pca
                                s[1,252] += 1
                        elseif i[:residue_name] == "MET"
                                # met_pca
                                s[1,272] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_pca
                                s[1,291] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_pca
                                s[1,309] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_pca
                                s[1,326] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_pca
                                s[1,342] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_pca
                                s[1,357] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_pca
                                s[1,371] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_pca
                                s[1,384] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_pca
                                s[1,396] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_pca
                                s[1,407] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_pca
                                s[1,416] += 1
                        elseif i[:residue_name] == "ACE"
                                # ace_pca
                                s[1,426] += 1
                        elseif i[:residue_name] == "SEP"
                                # sep_pca
                                s[1,434] += 1
                        elseif i[:residue_name] == "NH2"
                                # nh2_pca
                                s[1,441] += 1
                        elseif i[:residue_name] == "TPO"
                                # tpo_pca
                                s[1,447] += 1
                        elseif i[:residue_name] == "CSO"
                                # cso_pca
                                s[1,452] += 1
                        elseif i[:residue_name] == "PCA"
                                # pca_pca
                                s[1,456] += 1
                        elseif i[:residue_name] == "PTR"
                                # pca_ptr
                                s[1,457] += 1
                        elseif i[:residue_name] == "CME"
                                # pca_cme
                                s[1,458] += 1
                        elseif i[:residue_name] == "KCX"
                                # pca_kcx
                                s[1,459] += 1
                        end
                        
                elseif i[:part1_residue_name] == "PTR"
                        if i[:residue_name] == "ALA"
                                # ala_ptr
                                s[1,28] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_ptr
                                s[1,57] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_ptr
                                s[1,85] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_ptr
                                s[1,112] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_ptr
                                s[1,138] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_ptr
                                s[1,163] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_ptr
                                s[1,187] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_ptr
                                s[1,210] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_ptr
                                s[1,232] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_ptr
                                s[1,253] += 1
                        elseif i[:residue_name] == "MET"
                                # met_ptr
                                s[1,273] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_ptr
                                s[1,292] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_ptr
                                s[1,310] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_ptr
                                s[1,327] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_ptr
                                s[1,343] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_ptr
                                s[1,358] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_ptr
                                s[1,372] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_ptr
                                s[1,385] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_ptr
                                s[1,397] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_ptr
                                s[1,408] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_ptr
                                s[1,418] += 1
                        elseif i[:residue_name] == "ACE"
                                # ace_ptr
                                s[1,427] += 1
                        elseif i[:residue_name] == "SEP"
                                # sep_ptr
                                s[1,435] += 1
                        elseif i[:residue_name] == "NH2"
                                # nh2_ptr
                                s[1,442] += 1
                        elseif i[:residue_name] == "TPO"
                                # tpo_ptr
                                s[1,448] += 1
                        elseif i[:residue_name] == "CSO"
                                # cso_ptr
                                s[1,453] += 1
                        elseif i[:residue_name] == "PCA"
                                # pca_ptr
                                s[1,457] += 1
                        elseif i[:residue_name] == "PTR"
                                # ptr_ptr
                                s[1,460] += 1
                        elseif i[:residue_name] == "CME"
                                # ptr_cme
                                s[1,461] += 1
                        elseif i[:residue_name] == "KCX"
                                # ptr_kcx
                                s[1,462] += 1
                        end

                elseif i[:part1_residue_name] == "CME"
                        if i[:residue_name] == "ALA"
                                # ala_cme
                                s[1,29] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_cme
                                s[1,58] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_cme
                                s[1,86] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_cme
                                s[1,113] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_cme
                                s[1,139] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_cme
                                s[1,164] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_cme
                                s[1,188] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_cme
                                s[1,211] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_cme
                                s[1,233] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_cme
                                s[1,254] += 1
                        elseif i[:residue_name] == "MET"
                                # met_cme
                                s[1,274] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_cme
                                s[1,293] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_cme
                                s[1,311] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_cme
                                s[1,328] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_cme
                                s[1,344] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_cme
                                s[1,359] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_cme
                                s[1,373] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_cme
                                s[1,386] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_cme
                                s[1,398] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_cme
                                s[1,409] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_cme
                                s[1,419] += 1
                        elseif i[:residue_name] == "ACE"
                                # ace_cme
                                s[1,428] += 1
                        elseif i[:residue_name] == "SEP"
                                # sep_cme
                                s[1,436] += 1
                        elseif i[:residue_name] == "NH2"
                                # nh2_cme
                                s[1,443] += 1
                        elseif i[:residue_name] == "TPO"
                                # tpo_cme
                                s[1,449] += 1
                        elseif i[:residue_name] == "CSO"
                                # cso_cme
                                s[1,454] += 1
                        elseif i[:residue_name] == "PCA"
                                # pca_cme
                                s[1,458] += 1
                        elseif i[:residue_name] == "PTR"
                                # ptr_cme
                                s[1,461] += 1
                        elseif i[:residue_name] == "CME"
                                # cme_cme
                                s[1,463] += 1
                        elseif i[:residue_name] == "KCX"
                                # cme_kcx
                                s[1,464] += 1
                        end

                elseif i[:part1_residue_name] == "KCX"
                        if i[:residue_name] == "ALA"
                                # ala_kcx
                                s[1,30] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_kcx
                                s[1,59] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_kcx
                                s[1,87] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_kcx
                                s[1,114] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_kcx
                                s[1,140] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_kcx
                                s[1,165] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_kcx
                                s[1,189] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_kcx
                                s[1,212] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_kcx
                                s[1,234] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_kcx
                                s[1,255] += 1
                        elseif i[:residue_name] == "MET"
                                # met_kcx
                                s[1,275] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_kcx
                                s[1,294] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_kcx
                                s[1,312] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_kcx
                                s[1,329] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_kcx
                                s[1,345] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_kcx
                                s[1,360] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_kcx
                                s[1,374] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_kcx
                                s[1,387] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_kcx
                                s[1,399] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_kcx
                                s[1,410] += 1
                        elseif i[:residue_name] == "MSE"
                                # mse_kcx
                                s[1,420] += 1
                        elseif i[:residue_name] == "ACE"
                                # ace_kcx
                                s[1,429] += 1
                        elseif i[:residue_name] == "SEP"
                                # sep_kcx
                                s[1,437] += 1
                        elseif i[:residue_name] == "NH2"
                                # nh2_kcx
                                s[1,444] += 1
                        elseif i[:residue_name] == "TPO"
                                # tpo_kcx
                                s[1,450] += 1
                        elseif i[:residue_name] == "CSO"
                                # cso_kcx
                                s[1,455] += 1
                        elseif i[:residue_name] == "PCA"
                                # pca_kcx
                                s[1,459] += 1
                        elseif i[:residue_name] == "PTR"
                                # ptr_kcx
                                s[1,462] += 1
                        elseif i[:residue_name] == "CME"
                                # cme_kcx
                                s[1,464] += 1
                        elseif i[:residue_name] == "KCX"
                                # kcx_kcx
                                s[1,465] += 1
                        end
                end
        end
        return s
end


