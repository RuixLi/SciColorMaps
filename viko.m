function map = vikO(m)
%   VIKO a scientific colour map 6 by FabioCrameri et al.
%   viko(M) returns an M-by-3 matrix containing a colormap. 
%   written by Ruix.Li in Jan, 2021

% USAGE:
% colormap(viko(128))
% colormap viko

if nargin < 1
   f = get(groot,'CurrentFigure');
   if isempty(f)
      m = size(get(groot,'DefaultFigureColormap'),1);
   else
      m = size(f.Colormap,1);
   end
end

values = [
   0.309793908025148   0.100897207003792   0.238434036524151
   0.306924640911828   0.103056802525263   0.243182618065600
   0.304062940312676   0.105260033304638   0.248048226652089
   0.301206319300110   0.107641727273524   0.252960414937537
   0.298356559610347   0.110165463548691   0.257955994584066
   0.295505862995569   0.112760958639013   0.263073744794497
   0.292652302762132   0.115445942695320   0.268249976360419
   0.289796969978842   0.118319697663161   0.273541357768451
   0.286922583564578   0.121219994378701   0.278905492499267
   0.284058849461705   0.124314734819730   0.284343935244243
   0.281175542073072   0.127532692951756   0.289889725819916
   0.278303906397136   0.130892858000794   0.295517985409188
   0.275415213701660   0.134348668833586   0.301232047515103
   0.272488880576239   0.137934151186213   0.307043807644766
   0.269596383980873   0.141626169226450   0.312929696680564
   0.266659830370178   0.145480063869748   0.318904766652059
   0.263743298506805   0.149424620985812   0.324946579026546
   0.260788132269546   0.153481835594702   0.331073814791125
   0.257831212575559   0.157708528577832   0.337294032003509
   0.254905715605642   0.162084622417679   0.343564635155157
   0.251944797232848   0.166548898171261   0.349913974143313
   0.248988995290899   0.171142085504165   0.356325429278980
   0.246023639312264   0.175855923938054   0.362785855770911
   0.243081603714954   0.180726402610047   0.369314132335589
   0.240154944708967   0.185754938368969   0.375890705886303
   0.237283047995162   0.190836365530582   0.382507487627238
   0.234392503508471   0.196092022412258   0.389177594397859
   0.231550852639059   0.201425957913785   0.395877012991957
   0.228747556854331   0.206943555505224   0.402593578249779
   0.225999709582317   0.212529935026314   0.409350205161829
   0.223307331210181   0.218249858811969   0.416117330486914
   0.220709824799694   0.224061706686959   0.422891901019567
   0.218170282564303   0.229997523363226   0.429687848241288
   0.215755382107499   0.236076144038774   0.436479094776166
   0.213434194993725   0.242216715886743   0.443264023458552
   0.211280091265287   0.248489209464264   0.450037734247451
   0.209250416510256   0.254840505986325   0.456795625925898
   0.207408229958132   0.261270589136566   0.463536559695448
   0.205742916494384   0.267789334399976   0.470264324662459
   0.204294411005882   0.274425579969584   0.476951623995245
   0.203032297148339   0.281125413665427   0.483608809276913
   0.202026144827369   0.287915442202763   0.490242579658132
   0.201285316897590   0.294777886512948   0.496827974035325
   0.200827242936913   0.301710180549087   0.503377433484684
   0.200666745859330   0.308736376394273   0.509892837876909
   0.200819078656257   0.315806387709725   0.516355939137324
   0.201299891909706   0.322936745031692   0.522784800473412
   0.202125191886064   0.330124663590053   0.529167016569783
   0.203309782409719   0.337371383043394   0.535485876868149
   0.204842355145081   0.344664578305934   0.541769020334027
   0.206756323943755   0.352009925540866   0.548014230053651
   0.209001221846292   0.359413197112544   0.554202137789921
   0.211661401684885   0.366859288358728   0.560345630584883
   0.214658361801160   0.374347364755437   0.566442393845088
   0.218058716140939   0.381861082734210   0.572494811446026
   0.221805267362859   0.389424221335698   0.578493411567154
   0.225949135105867   0.397012128168272   0.584457016515578
   0.230400095333140   0.404640296880630   0.590370114549219
   0.235255338850415   0.412310758490402   0.596247408909974
   0.240385423835947   0.419990271806847   0.602077092999655
   0.245884716389052   0.427705551481626   0.607872905769762
   0.251718975907129   0.435439797498954   0.613609830577382
   0.257815140700718   0.443188869895760   0.619327951999755
   0.264244487641642   0.450959166453334   0.624986960225331
   0.270944706171846   0.458745863543946   0.630616483090462
   0.277910234412963   0.466545954979115   0.636198459397387
   0.285126214568542   0.474357735819355   0.641734471441969
   0.292615129224575   0.482176752932112   0.647237534165371
   0.300336389862990   0.489993419491834   0.652688378449478
   0.308292163052588   0.497830540782966   0.658107431899633
   0.316470561879448   0.505635345623893   0.663476411372648
   0.324835913403187   0.513465603859860   0.668791954523105
   0.333431866867132   0.521272075265187   0.674058750518835
   0.342198961001448   0.529079473394145   0.679273499132389
   0.351151993159626   0.536863152221039   0.684434775631387
   0.360264667591252   0.544620082578037   0.689547909171883
   0.369558505393740   0.552363101664571   0.694582745128283
   0.379006138936997   0.560074610607659   0.699562617136858
   0.388606264846838   0.567750256525691   0.704473404735307
   0.398342115356372   0.575392158003063   0.709312459946053
   0.408207532184942   0.582984799968336   0.714061869769549
   0.418197713145552   0.590534320086640   0.718732362756102
   0.428316835545151   0.598029092138933   0.723310981694614
   0.438534830240887   0.605463187211415   0.727795456233689
   0.448867108083450   0.612830984420509   0.732180171523932
   0.459282183269029   0.620135733824610   0.736442448680070
   0.469788332153197   0.627344298646419   0.740595073999991
   0.480359968498253   0.634476616315546   0.744620520866761
   0.491018562883784   0.641500031337071   0.748513057441568
   0.501718885773499   0.648430624939498   0.752259541809769
   0.512468388816795   0.655247610521195   0.755858021386889
   0.523270773829293   0.661953518976724   0.759290102750434
   0.534088264516484   0.668519686630053   0.762556165334469
   0.544938807020048   0.674947370066199   0.765647533458515
   0.555783330760929   0.681226717981118   0.768535946484920
   0.566644473748891   0.687359083799036   0.771238282701663
   0.577471868755281   0.693320654461432   0.773716660925671
   0.588275547268654   0.699099017754073   0.775983723223867
   0.599048766666080   0.704697870889355   0.778018852080966
   0.609756469161504   0.710098400862852   0.779808586538787
   0.620405990443541   0.715290343335885   0.781352517853586
   0.630964107776115   0.720259844830406   0.782630704263913
   0.641417526883168   0.725008162687611   0.783643569286515
   0.651774559330083   0.729510373827235   0.784376641265888
   0.661998094936970   0.733766411178260   0.784818004925700
   0.672071286482184   0.737761099105108   0.784964428874766
   0.681984584723143   0.741490886066894   0.784808631004045
   0.691734254017497   0.744947190520431   0.784344001851078
   0.701285766766428   0.748120494327182   0.783559276075571
   0.710637587775149   0.750999632798949   0.782456336531411
   0.719766230736740   0.753570564125623   0.781029651178945
   0.728655656097006   0.755844624807438   0.779275202996347
   0.737301172030277   0.757805990700084   0.777198439708309
   0.745681975247517   0.759446841332341   0.774779103240771
   0.753790167970286   0.760778791641594   0.772041234893260
   0.761608218199594   0.761780422000047   0.768968472216021
   0.769129547735986   0.762462467471848   0.765581418910015
   0.776349567188164   0.762821501206501   0.761860236485672
   0.783246950002514   0.762857524562871   0.757832067586844
   0.789824494712565   0.762572090752986   0.753486636730964
   0.796069082091314   0.761968042078136   0.748840836427540
   0.801982240948778   0.761051780664225   0.743900910654916
   0.807559464190287   0.759818172983805   0.738672259208395
   0.812790417129033   0.758288288027079   0.733164022865881
   0.817683362247837   0.756451218505565   0.727384922319545
   0.822239988458578   0.754327749426817   0.721348429545614
   0.826448979960832   0.751914817392534   0.715071069271224
   0.830322674174313   0.749220442810559   0.708557926850878
   0.833863603909261   0.746267454367759   0.701808818009977
   0.837071262346947   0.743057376993768   0.694857173404174
   0.839957396083799   0.739595494142205   0.687707097710622
   0.842522358709095   0.735881081060603   0.680358931133196
   0.844774749204810   0.731953043383953   0.672848963655248
   0.846720473811789   0.727794896573468   0.665157591395343
   0.848375463353358   0.723429102962826   0.657325399612004
   0.849743965922898   0.718865838409403   0.649342663858075
   0.850824407269539   0.714108876307878   0.641219102601225
   0.851641369428056   0.709178270699179   0.632987898469910
   0.852200241020244   0.704063879514786   0.624639217955451
   0.852501823387954   0.698788770408182   0.616187657573204
   0.852559158753665   0.693366144498577   0.607647645641109
   0.852382502913609   0.687792420828439   0.599014407356964
   0.851977122680891   0.682075735069044   0.590302872603699
   0.851351324004276   0.676237875012596   0.581529643489801
   0.850523852438655   0.670275734564995   0.572701278283783
   0.849497320105676   0.664185853890477   0.563812101532667
   0.848269089384556   0.657993378663820   0.554867323170006
   0.846856854206188   0.651690871848681   0.545892061847193
   0.845268480774022   0.645281054331113   0.536876948551982
   0.843501585029086   0.638785844619953   0.527819000984840
   0.841573484284725   0.632196448713537   0.518752935472028
   0.839479808175460   0.625516153250501   0.509649850374065
   0.837227264779312   0.618760691882518   0.500534901705318
   0.834819313232064   0.611908085016315   0.491420236327874
   0.832263827361831   0.604986040220614   0.482276130661528
   0.829562707648434   0.597982286473356   0.473123267153980
   0.826715031938625   0.590908017867693   0.463992633641442
   0.823723502014988   0.583758722525349   0.454850078462031
   0.820595076263538   0.576547455864089   0.445696585223514
   0.817329753859028   0.569242398044768   0.436574533452090
   0.813924675835034   0.561888524616157   0.427457584623642
   0.810382893411908   0.554450666043758   0.418335476951246
   0.806711385227053   0.546945475932006   0.409251213738573
   0.802891028913496   0.539365617116368   0.400180789387887
   0.798941778448175   0.531724761617451   0.391138397538784
   0.794848283228517   0.524008691728407   0.382105218778781
   0.790615547361185   0.516215362519940   0.373117372533061
   0.786247823935845   0.508373026026619   0.364161529753824
   0.781732030455758   0.500434475829945   0.355262140253350
   0.777074666549499   0.492434528147352   0.346370191783604
   0.772265266367933   0.484363576637883   0.337552192481829
   0.767311903980718   0.476231571226213   0.328784832690327
   0.762212702915824   0.468018379110171   0.320075528379065
   0.756966311850359   0.459744625542691   0.311414311749567
   0.751572326405695   0.451403544366118   0.302832020487316
   0.746016692389895   0.442995839376414   0.294338985832899
   0.740318341591221   0.434520620074156   0.285926393822246
   0.734467633934652   0.425985802346866   0.277632678534901
   0.728461953284756   0.417409785983915   0.269432637967994
   0.722309342306594   0.408764683522866   0.261326056623375
   0.716021872405115   0.400078422790634   0.253359913459483
   0.709579660240458   0.391359316179497   0.245505267092579
   0.702999517858694   0.382588637962188   0.237836431734833
   0.696284283842367   0.373805259501375   0.230275243795889
   0.689440579099814   0.364987806829703   0.222933158069863
   0.682464441210887   0.356174784875183   0.215739889706124
   0.675380227212630   0.347351638484459   0.208729057699339
   0.668189722566455   0.338518511365740   0.201918960288938
   0.660887214875686   0.329729555229130   0.195346519147285
   0.653502118744247   0.320947970155804   0.188997644143104
   0.646036842498887   0.312187538611025   0.182858188421731
   0.638504089384944   0.303505187431596   0.177002038082577
   0.630916439028889   0.294878024594249   0.171379824530499
   0.623278425276613   0.286317789517977   0.166022968773532
   0.615601139015563   0.277866225657125   0.160968299669455
   0.607918960856088   0.269500978817332   0.156190752349148
   0.600216342788460   0.261224428288181   0.151648655994572
   0.592533061297455   0.253083694029233   0.147456498991487
   0.584857192768055   0.245049567682888   0.143533222282508
   0.577214751096201   0.237213112724273   0.139876378885290
   0.569614346807591   0.229457620896164   0.136559864596752
   0.562086857639028   0.221899564048276   0.133557015936372
   0.554609229599840   0.214514024951622   0.130838560937658
   0.547212706770506   0.207308716366036   0.128376960463812
   0.539904283981788   0.200249242499654   0.126228976985289
   0.532704145267674   0.193438751088556   0.124313888848485
   0.525599116660393   0.186790660747313   0.122693059564156
   0.518615188639043   0.180343451875462   0.121354805947125
   0.511736812875619   0.174126792732529   0.120283375965295
   0.504996217238902   0.168092896660453   0.119460292900304
   0.498392470737232   0.162313846629670   0.118887241278494
   0.491910073567988   0.156717774210280   0.118529879144618
   0.485559259840210   0.151322837554428   0.118380291509923
   0.479365282460110   0.146178830971640   0.118440538466732
   0.473292909469760   0.141262336091865   0.118696333867534
   0.467385540937724   0.136499388205065   0.119128086297083
   0.461606180418583   0.132028701777757   0.119742547969674
   0.455965112509913   0.127738730942539   0.120540070267547
   0.450469844249777   0.123640150640678   0.121503181511883
   0.445109810509102   0.119800653284629   0.122633166690826
   0.439885122384442   0.116198807832705   0.123926503850481
   0.434794927413567   0.112774312141551   0.125383641499880
   0.429828629438610   0.109562953176423   0.126918093561674
   0.424995861776967   0.106542826876180   0.128630240137399
   0.420274501068967   0.103705928215928   0.130494887114281
   0.415679474099987   0.101055905239593   0.132411071671225
   0.411199309971739   0.098655324477485   0.134487338495892
   0.406829125524431   0.096378229444630   0.136617489146715
   0.402559263696263   0.094420203921316   0.138902711047233
   0.398404354217235   0.092522924392062   0.141317967859161
   0.394333722077655   0.090891823992434   0.143788187568791
   0.390360464491041   0.089395932241456   0.146355184766353
   0.386473267808759   0.088089586536452   0.149036652191782
   0.382681079751978   0.086971465399663   0.151797866833720
   0.378962262473718   0.085914936510607   0.154662983471760
   0.375314766109136   0.085142469083047   0.157608016043229
   0.371741679853693   0.084548791040821   0.160643092870641
   0.368247788211926   0.084070039801713   0.163800760732460
   0.364801673178791   0.083716750417459   0.166997027103071
   0.361424911885128   0.083520864955514   0.170268398910367
   0.358103908999701   0.083485077640730   0.173627582827058
   0.354839589089456   0.083605386501396   0.177086264165317
   0.351599247578382   0.083878240561892   0.180596275793250
   0.348426298629086   0.084281338618413   0.184215527354300
   0.345287123134792   0.084781030333089   0.187934950342509
   0.342192248717373   0.085387384266027   0.191667203941815
   0.339133144514374   0.086178677084023   0.195515423493915
   0.336087134430675   0.087176020519794   0.199428640651792
   0.333098736650984   0.088189870298453   0.203460250447922
   0.330116579057685   0.089356388469099   0.207546041016315
   0.327150488793065   0.090651792013190   0.211724347676743
   0.324218620393730   0.092078352711480   0.215974995333112
   0.321307976494178   0.093564401083357   0.220305809775598
   0.318411067548004   0.095269471159961   0.224678952212648
   0.315531128420732   0.096976479304323   0.229196932256398
   0.312640205698551   0.098899285696836   0.233766596236741
   ];

P = size(values,1);
map = interp1(1:size(values,1), values, linspace(1,P,m), 'linear');