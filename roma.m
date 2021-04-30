function map = roma(m)
%   ROMA a scientific colour map 6 by FabioCrameri et al.
%   roma(M) returns an M-by-3 matrix containing a colormap. 
%   written by Ruix.Li in Jan, 2021

% USAGE:
% colormap(roma(128))
% colormap roma

if nargin < 1
   f = get(groot,'CurrentFigure');
   if isempty(f)
      m = size(get(groot,'DefaultFigureColormap'),1);
   else
      m = size(f.Colormap,1);
   end
end

values = [
   0.496844752476496   0.099625705522194                   0
   0.501412357063625   0.111588772029857   0.003827059988045
   0.505947607478019   0.122811539388218   0.007536201038475
   0.510489963247676   0.133619859422881   0.011176001863986
   0.515017305147818   0.143972609165998   0.014691057053299
   0.519528840414294   0.153965057865525   0.017936214345100
   0.524027741503739   0.163733399692882   0.021020437621575
   0.528514270213209   0.173191520206343   0.023940713212623
   0.532976624843060   0.182466977592832   0.026767851548547
   0.537417962760829   0.191588715228521   0.029740243136076
   0.541814928470905   0.200534699862221   0.032885609569790
   0.546204881732887   0.209379939770807   0.036371172454190
   0.550547325648964   0.218096863460148   0.039850100599318
   0.554864755565330   0.226705186697094   0.043274877308032
   0.559150721923384   0.235223267996485   0.046907624581434
   0.563416270944531   0.243616989343108   0.050381445681143
   0.567639568205250   0.251988763720841   0.053844062048739
   0.571835258442879   0.260262392092961   0.057332236740292
   0.576011506868113   0.268482644711878   0.060810473047664
   0.580145141141947   0.276649775030730   0.064287169831576
   0.584249684427695   0.284742756394978   0.067737526123213
   0.588325286778244   0.292810441963391   0.071178123623359
   0.592390918179901   0.300829390631358   0.074546805103995
   0.596409988802483   0.308833302156681   0.077891474550712
   0.600406992471702   0.316770865319570   0.081344183967231
   0.604386498286745   0.324675654434941   0.084708680800939
   0.608336447705339   0.332582235565440   0.088059145032017
   0.612252268784671   0.340431928621279   0.091424892115746
   0.616158614665214   0.348265882780477   0.094761861943948
   0.620043967042831   0.356083862406747   0.098070996408180
   0.623904374473931   0.363867274089439   0.101346231570790
   0.627741965272943   0.371641258881774   0.104624125571210
   0.631565747640409   0.379410402353356   0.107944799621977
   0.635369132962240   0.387155076746546   0.111286425897426
   0.639163411297496   0.394901146782479   0.114521534065460
   0.642941073929627   0.402628623434963   0.117860248642390
   0.646709216347901   0.410367103153564   0.121118000231212
   0.650463575232913   0.418074298500090   0.124428030471688
   0.654208600925774   0.425793979438897   0.127755402343805
   0.657953030108978   0.433507657287355   0.131081582522024
   0.661686759387208   0.441230913904290   0.134416013141408
   0.665411826499547   0.448962730783435   0.137762046861005
   0.669142114394682   0.456683575602511   0.141122016880628
   0.672872656983896   0.464433168982285   0.144495775837135
   0.676601443609746   0.472177520484372   0.147904816314271
   0.680328703802067   0.479938725978639   0.151340461318836
   0.684070739475560   0.487719036516061   0.154835384673699
   0.687827107201609   0.495507177226328   0.158397752875528
   0.691588343453306   0.503319620649470   0.161995600131774
   0.695366192092010   0.511165708805620   0.165602936292131
   0.699155965715531   0.519045441293025   0.169379541550227
   0.702975406821150   0.526947292680765   0.173151939238862
   0.706812926048061   0.534876900513488   0.177057561887046
   0.710673654992715   0.542854381569877   0.181032304740885
   0.714559544294267   0.550865866831516   0.185174567898343
   0.718484735876368   0.558920436040636   0.189386740314734
   0.722442071804661   0.567037520320796   0.193766916614502
   0.726444420427729   0.575191679617786   0.198260606369600
   0.730485092660439   0.583404922300285   0.202947091545402
   0.734571593733250   0.591683913367302   0.207814027071918
   0.738703642408602   0.600015338681151   0.212854402033137
   0.742889028325327   0.608417806351357   0.218130537831256
   0.747122932345439   0.616875777374432   0.223611118764868
   0.751417563756946   0.625398217903883   0.229326379526053
   0.755760405452100   0.633995503148179   0.235325118742944
   0.760163006638935   0.642647391541473   0.241557677547905
   0.764625710388299   0.651365612310872   0.248088870379351
   0.769138429621105   0.660137542904274   0.254901263799294
   0.773709387449003   0.668966126394874   0.261999132592301
   0.778334648608978   0.677840038362734   0.269434187447535
   0.783001168707409   0.686743603719559   0.277164521418767
   0.787711299015916   0.695679579716721   0.285203248915807
   0.792456648469013   0.704622125428371   0.293581403289658
   0.797223703593217   0.713566349937301   0.302267649185835
   0.802010131856108   0.722486337577792   0.311280094187897
   0.806805913673179   0.731375249213475   0.320592787357986
   0.811587995966965   0.740209987032492   0.330172935839586
   0.816352833006552   0.748956820390198   0.340035134384697
   0.821077578293544   0.757611481563605   0.350147248406858
   0.825755307660483   0.766141557571042   0.360474387267589
   0.830371431076577   0.774522355292983   0.371026295793934
   0.834902537088788   0.782742256247656   0.381762222085953
   0.839337989825286   0.790772612513522   0.392641723584525
   0.843655285586820   0.798596289173863   0.403654317345561
   0.847850043866714   0.806193844187766   0.414746511401555
   0.851904911234985   0.813544357245076   0.425906124165806
   0.855801067726736   0.820643269131551   0.437113230937924
   0.859526817089812   0.827475781990910   0.448313220503992
   0.863075751105548   0.834035032024127   0.459503576247473
   0.866427949650601   0.840307260456219   0.470648873777466
   0.869582214270262   0.846288304325058   0.481728523788719
   0.872531351417597   0.851992738967717   0.492717404834718
   0.875260292272610   0.857402638903029   0.503617848132767
   0.877767481446146   0.862539723912026   0.514407931430581
   0.880043362523216   0.867387362888474   0.525056576052737
   0.882088882579680   0.871973202437535   0.535566989190973
   0.883896967819054   0.876287199099192   0.545948048805403
   0.885456453328123   0.880350496402601   0.556153549945441
   0.886771274490365   0.884172895324632   0.566222461563678
   0.887829240983677   0.887751596877699   0.576132446041372
   0.888638682341548   0.891111176061821   0.585868228094993
   0.889182858338945   0.894257301417084   0.595438351489690
   0.889462434913731   0.897197078037209   0.604853113536047
   0.889474048908873   0.899938955400006   0.614093738722917
   0.889213243024101   0.902496815909620   0.623185643843010
   0.888674702227283   0.904878853109386   0.632100999968114
   0.887848589493978   0.907092173898479   0.640851104741310
   0.886742982294422   0.909141365162149   0.649445320330673
   0.885340452424932   0.911042188202720   0.657868208144070
   0.883644964149175   0.912793012799984   0.666117389636702
   0.881646723980663   0.914403471437409   0.674206331161234
   0.879341525215520   0.915869590603399   0.682121927208889
   0.876730023375528   0.917215968735440   0.689875710244461
   0.873812133114097   0.918420081509547   0.697447382891596
   0.870575537317223   0.919502356894294   0.704849694305470
   0.867025913335937   0.920458511379474   0.712072679725009
   0.863164162968445   0.921294800430281   0.719117545245085
   0.858974418003162   0.922011305142669   0.725980284464249
   0.854472125073389   0.922602025325800   0.732657318287778
   0.849653858147491   0.923072555581192   0.739148372399944
   0.844515795259498   0.923421844716887   0.745440623212781
   0.839063728852966   0.923648001439395   0.751554326733380
   0.833302597175091   0.923750270378695   0.757463838826130
   0.827233386040635   0.923727591259865   0.763181083728828
   0.820857808065160   0.923577897272371   0.768703291916550
   0.814184810211739   0.923298272846220   0.774030287695276
   0.807222955543530   0.922886070425708   0.779162032195775
   0.799970427853911   0.922340283670990   0.784099529875680
   0.792431105866831   0.921655118941171   0.788832480176729
   0.784623412278666   0.920824302768194   0.793371276564356
   0.776542499306334   0.919856436536609   0.797707085558316
   0.768195910913011   0.918733668634684   0.801853631787804
   0.759602248588545   0.917467310798027   0.805805884062334
   0.750771804492066   0.916029130092224   0.809568319144300
   0.741690750708663   0.914441551359595   0.813131685826530
   0.732395229259940   0.912681275999048   0.816514002683528
   0.722867926109797   0.910752996370153   0.819696163685843
   0.713142469501130   0.908646790211071   0.822701448141096
   0.703222451352311   0.906363652588391   0.825511571146351
   0.693114221818358   0.903893276069397   0.828139638814685
   0.682827196812207   0.901238204436041   0.830586594264170
   0.672387743111901   0.898389956887844   0.832843270345975
   0.661799425999779   0.895352401665075   0.834921967594322
   0.651073952417927   0.892114677316990   0.836816591304682
   0.640238124403031   0.888677634429558   0.838526549758302
   0.629296058053355   0.885038359643100   0.840062696382624
   0.618282085009919   0.881200197509213   0.841410508173092
   0.607206347695826   0.877157380557870   0.842582659081723
   0.596077063592788   0.872921712929230   0.843567954433870
   0.584937123606700   0.868490135284768   0.844384115060816
   0.573788544164023   0.863858090907632   0.845019839168485
   0.562674052885013   0.859031236258181   0.845477579470174
   0.551592705988669   0.854022235867986   0.845762324298442
   0.540579780189957   0.848838398937609   0.845875813874544
   0.529662359450399   0.843474431305991   0.845820222793202
   0.518857578030362   0.837952981692436   0.845598648265953
   0.508185871880454   0.832268387021585   0.845215033396487
   0.497669989625390   0.826434997169969   0.844671995283483
   0.487327005413474   0.820459073009689   0.843969327354192
   0.477177667850028   0.814356846534494   0.843120938833992
   0.467254120308956   0.808136922666622   0.842129515055768
   0.457547694968606   0.801801885146400   0.840993044141810
   0.448093002183160   0.795369241260925   0.839726871008212
   0.438894231597318   0.788850162325346   0.838326084400085
   0.429973470658178   0.782245187612926   0.836808767180786
   0.421314033974160   0.775566569054515   0.835173744052678
   0.412959841322460   0.768827338780080   0.833431314390599
   0.404864541375344   0.762037317943362   0.831588291604624
   0.397070194471799   0.755206382179290   0.829644689133062
   0.389570371052252   0.748330662801592   0.827608405261215
   0.382350274387038   0.741419491570291   0.825492470836359
   0.375416612864547   0.734495491567301   0.823300834984430
   0.368772714181710   0.727542524425836   0.821036594648697
   0.362383120336774   0.720579265014504   0.818704228383688
   0.356266351392731   0.713610410445034   0.816320974069795
   0.350400814918946   0.706638377102649   0.813870953438181
   0.344767101600900   0.699655211976713   0.811380539772555
   0.339388200655355   0.692690264149388   0.808842422107688
   0.334215240894760   0.685718124783035   0.806262035618273
   0.329258987436534   0.678754281142752   0.803644031975352
   0.324477852814588   0.671805115392624   0.800995584509107
   0.319917133974809   0.664864620994935   0.798318881209021
   0.315513614324475   0.657948900943101   0.795616212781119
   0.311269088429620   0.651037023362615   0.792895975273986
   0.307176067260906   0.644139454985344   0.790150906732277
   0.303222529457162   0.637269786746409   0.787393565792402
   0.299421177969211   0.630415098419828   0.784624010101999
   0.295709115701766   0.623577946756821   0.781839393490832
   0.292125855221536   0.616757016933534   0.779042129965738
   0.288636783378323   0.609952179615785   0.776243144852224
   0.285226682880723   0.603176763862952   0.773433100590480
   0.281932222002087   0.596417815509584   0.770626807883569
   0.278695141359584   0.589673958898699   0.767809202151973
   0.275535945341483   0.582959223399217   0.765001139018608
   0.272406553907625   0.576275958800676   0.762181042971575
   0.269386302421054   0.569588151230104   0.759366449106404
   0.266384809786094   0.562945149037918   0.756557946764770
   0.263446922320142   0.556302691479668   0.753748467037388
   0.260532454682862   0.549699017078579   0.750947504942254
   0.257663039433127   0.543111355696143   0.748143198109438
   0.254858043982075   0.536546016415962   0.745341524154913
   0.252054903175456   0.529995538714287   0.742553251343931
   0.249280241362278   0.523471762594990   0.739768770066575
   0.246537856720173   0.516968100011710   0.736981608096727
   0.243816488986830   0.510478495054116   0.734207462619967
   0.241138853087876   0.504023332047098   0.731434965034048
   0.238460210900378   0.497584843024902   0.728672663377192
   0.235831507033894   0.491168048251985   0.725921148011076
   0.233171937998130   0.484750742736862   0.723165939818301
   0.230563394650888   0.478375571249880   0.720425485426194
   0.227981180050879   0.472024220838002   0.717695545086290
   0.225380168012947   0.465670695668591   0.714962349366925
   0.222818441259186   0.459363230700760   0.712239659326824
   0.220261273610397   0.453062147072157   0.709530652799171
   0.217697759379335   0.446780319399916   0.706823813810650
   0.215140490147900   0.440514728668621   0.704119161009908
   0.212618143280720   0.434272384321493   0.701423643522207
   0.210094058355580   0.428057170697475   0.698735993902110
   0.207584409453221   0.421841727291054   0.696062160673199
   0.205068706513561   0.415661520568987   0.693386118835051
   0.202558720826491   0.409496194277363   0.690713560895467
   0.200048155433365   0.403347495572838   0.688058161323100
   0.197574409824685   0.397203611760972   0.685404471577677
   0.195088599118876   0.391098016389882   0.682752189577269
   0.192593506701804   0.384984113012127   0.680104848035476
   0.190103566412710   0.378903884457029   0.677477768310013
   0.187646005116703   0.372830315738007   0.674839544104712
   0.185147489972424   0.366784426030675   0.672215742529307
   0.182619781494204   0.360728217920081   0.669594787366898
   0.180129290644423   0.354722940088940   0.666972350077326
   0.177659592326608   0.348700836969203   0.664361510288655
   0.175131042681396   0.342706762799455   0.661760562960222
   0.172593064925645   0.336706409484552   0.659149674370462
   0.170074961127131   0.330722818622887   0.656557735656522
   0.167524573142565   0.324753440472280   0.653958114968738
   0.164938968185641   0.318803842668686   0.651369465363115
   0.162383806586872   0.312848636777574   0.648780449414558
   0.159736840400137   0.306914142183258   0.646192891633427
   0.157119590523079   0.300969930395641   0.643609397036875
   0.154457674372901   0.295043910973392   0.641030404477029
   0.151760394773307   0.289137065672069   0.638457985651357
   0.149038262402968   0.283217225675733   0.635885318158905
   0.146267259762299   0.277302699396996   0.633314671950442
   0.143460461175899   0.271379872022649   0.630748701492023
   0.140601228817574   0.265473912313936   0.628179824105931
   0.137689142602338   0.259573970897739   0.625609061232236
   0.134703642445313   0.253654348386304   0.623048015469448
   0.131631985785767   0.247744469228745   0.620487959947536
   0.128492400091402   0.241818044434748   0.617917714629636
   0.125280453564392   0.235896059892138   0.615354038908881
   0.121937005501838   0.229930344266618   0.612792031575107
   0.118593574356164   0.223993029174324   0.610233883691881
   0.115016662372922   0.218052566643601   0.607680249928031
   0.111418954250977   0.212092959308431   0.605112681555507
   0.107611234194769   0.206110296518134   0.602551688775792
   0.103698839573685   0.200062791896449   0.599991823713243
   ];

P = size(values,1);
map = interp1(1:size(values,1), values, linspace(1,P,m), 'linear');