using DataFrames, XLSX, DelimitedFiles

function gather_data(files::Vector{String})
        failed_pdb_codes = []
        pdb_codes = Vector{String}()
        interface_ids = Vector{Int}()
        css_es = Vector{Float32}()
        int_area = Vector{Float32}()
        molecule1s = Vector{String}()
        molecule2s = Vector{String}()
        n_res = Vector{Int}()
        a = Array{Int64}(undef,0,30)

        cntr = 0
        counter = 1
        for f in files
                pdb = f[2:5]
                try
                        m = load_pdb(joinpath(path,f))
                        @assert length(m.chains) == 2
                        chainA = m.chains[1].name
                        chainB = m.chains[2].name
                        println(pdb)
                        intface = interface(m.atoms, chainA, chainB)
                        residues = count_residue_areas(intface.residues)
                        a = [a; residues]
                        push!(pdb_codes,pdb)
                        # When processing native interfaces, the css should be 1
                        # The false interfaces will be numbered 2 to 10, or more if necessary
                        push!(css_es, 1)
                        # When processing native interfaces, the id will be set to 1
                        # The false interfaces will be numbered 2 to 10, or more if necessary
                        push!(interface_ids, 1)
                        push!(int_area, intface.area)
                        push!(molecule1s,chainA)
                        push!(molecule2s,chainB)
                        push!(n_res, nrow(intface.residues))
                        cntr += 1
                catch e
                        println(e)
                        push!(failed_pdb_codes, pdb)
                        continue
                end

                # save every 500 entries
                if cntr == 500
                        df = DataFrame(
                                pdb_code = pdb_codes,
                                interface_id = interface_ids,
                                css =  css_es,
                                inte_area =  int_area,
                                molecule_1 =  molecule1s,
                                molecule_2 =  molecule2s,
                                n_res = n_res,
                                ala = a[:,1],
                                cys = a[:,2],
                                asp = a[:,3],
                                glu = a[:,4],
                                phe = a[:,5],
                                gly = a[:,6],
                                his = a[:,7],
                                ile = a[:,8],
                                lys = a[:,9],
                                leu = a[:,10],
                                met = a[:,11],
                                asn = a[:,12],
                                pro = a[:,13],
                                gln = a[:,14],
                                arg = a[:,15],
                                ser = a[:,16],
                                thr = a[:,17],
                                val = a[:,18],
                                trp = a[:,19],
                                tyr = a[:,20],
                                mse = a[:,21],
                                # cme = a[:,22],
                                # sep = a[:,23],
                                # nh2 = a[:,24],
                                tpo = a[:,25],
                                cso = a[:,26],
                                pca = a[:,27],
                                # ptr = a[:,28],
                                cme = a[:,29],
                                kcx = a[:,30]
                        )
                        i = string(counter)
                        XLSX.writetable(i *"_500_testing_data.xlsx",df)
                        
                        open("failed_log.txt","w") do io
                                writedlm(io,failed_pdb_codes)
                        end

                        # reinitiation 
                        pdb_codes = Vector{String}()
                        interface_ids = Vector{Int}()
                        css_es = Vector{Float32}()
                        int_area = Vector{Float32}()
                        molecule1s = Vector{String}()
                        molecule2s = Vector{String}()
                        n_res = Vector{Int}()
                        a = Array{Int64}(undef,0,30)

                        cntr = 0
                        counter += 1
                end
        end
end