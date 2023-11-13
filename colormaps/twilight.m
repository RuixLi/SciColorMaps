function map = twilight(m)
%   TWILIGHT a colour map adopted from matplotlib
%   twilight(M) returns an M-by-3 matrix containing a colormap. 
%   written by Ruix.Li in Jan, 2021

% USAGE:
% colormap(twilight(128))
% colormap twilight

if nargin < 1
   f = get(groot,'CurrentFigure');
   if isempty(f)
      m = size(get(groot,'DefaultFigureColormap'),1);
   else
      m = size(f.Colormap,1);
   end
end

values = [
   0.885750158407544   0.850009249430678   0.887973650642720
   0.881722310592858   0.851275940776535   0.886380569255148
   0.877248808589655   0.851870283388703   0.884341203813114
   0.872331340851241   0.851801654780809   0.881897043550016
   0.866960155053336   0.851089608531407   0.879097669771733
   0.861102454368998   0.849767548570013   0.875992429234396
   0.854725931892570   0.847874881246728   0.872628298093058
   0.847807107025779   0.845454622920952   0.869040367836944
   0.840304208059578   0.842560595085508   0.865250882410458
   0.832227057129344   0.839234906277545   0.861275635004279
   0.823574296802528   0.835524877647954   0.857131913285149
   0.814389821211431   0.831465586941978   0.852837590621470
   0.804691644298146   0.827098387805607   0.848424492969740
   0.794543050892311   0.822451162263046   0.843921847868280
   0.783991010427649   0.817554264005334   0.839367474640367
   0.773084165901709   0.812435247354660   0.834801729505797
   0.761869079379803   0.807119493876475   0.830266486168872
   0.750403467654067   0.801626990089653   0.825797378510824
   0.738737717004949   0.795976657350310   0.821429227804330
   0.726921775128297   0.790184686359276   0.817192174667264
   0.715004030762521   0.784264870915812   0.813111165599499
   0.703029772254082   0.778229049733581   0.809206188480570
   0.691046410093091   0.772086294606781   0.805488416906791
   0.679095544998822   0.765844721313959   0.801964661730020
   0.667214798037528   0.759511280373038   0.798636746545378
   0.655436923264547   0.753092087567684   0.795502711290310
   0.643791083109985   0.746592380083366   0.792556532013061
   0.632302713871060   0.740016721601314   0.789788927626404
   0.620991930648175   0.733369347989232   0.787189946246966
   0.609875431760931   0.726653987597583   0.784748357326947
   0.598966581448207   0.719873948922467   0.782452598993466
   0.588275797805555   0.713032146464581   0.780291414056365
   0.577811643899820   0.706131061571540   0.778253451210255
   0.572666894815877   0.702658953542578   0.777277026809120
   0.557589404196052   0.692159114582541   0.774504133793278
   0.547840981530186   0.685091422185099   0.772773864734409
   0.538340155751763   0.677970811290954   0.771127344390577
   0.533683891477284   0.674390937052127   0.770332505487973
   0.520096273922356   0.663573914340304   0.768051194033441
   0.511359925416019   0.656298539818319   0.766606637806453
   0.502885354041556   0.648972167340953   0.765214467181749
   0.498747336613561   0.645289868490093   0.764535787341801
   0.486735959943057   0.634166462511005   0.762557800859240
   0.479068162361974   0.626686762518601   0.761280003756624
   0.471676295188771   0.619155432428846   0.760027092278830
   0.468084909705316   0.615370286957903   0.759407898910927
   0.457733772301606   0.603936300465865   0.757569369018592
   0.451189186876177   0.596247620513535   0.756351206432466
   0.444932468542154   0.588505599830862   0.755131104185790
   0.441912717666964   0.584614411001756   0.754518388844107
   0.433290088673584   0.572859416256067   0.752659465325667
   0.427906522849258   0.564954306090921   0.751394435219148
   0.422814856757727   0.556993921269966   0.750100869882276
   0.420378223613963   0.552992871581082   0.749441255945189
   0.413502457433147   0.540905747710985   0.747400732975431
   0.409276889991475   0.532777301771303   0.745980306357078
   0.405333437893032   0.524592281749831   0.744503658367081
   0.403466003339054   0.520478476538400   0.743742152235671
   0.398271915258634   0.508051665392761   0.741354509180997
   0.395140588082076   0.499695853263778   0.739668202117157
   0.392264948762093   0.491283003328993   0.737898247844751
   0.390920175719949   0.487055202512230   0.736979771338813
   0.387243014593303   0.474286459336354   0.734080167878544
   0.385075567936514   0.465703067199302   0.732018540336905
   0.383121680844027   0.457063235814072   0.729846267913533
   0.381368879304542   0.448367276692779   0.727556713171413
   0.380563806965656   0.443998372086337   0.726365870451353
   0.378413635091359   0.430808594114131   0.722599319930610
   0.377183718442512   0.421946802234548   0.719918415244758
   0.376100012863858   0.413030799524771   0.717093969199202
   0.375148025053805   0.404061260999394   0.714119369572573
   0.374313131993123   0.395038948282833   0.710987965223775
   0.373580621509828   0.385964743860575   0.707692976073106
   0.372935786466650   0.376839638352198   0.704227557805899
   0.372641667578496   0.372258350048368   0.702428731457072
   0.371850615589860   0.358441482858752   0.696756958102565
   0.371381242237366   0.349171268784790   0.692737034719288
   0.370941515513373   0.339855914888181   0.688517033795051
   0.370517386344844   0.330497412443079   0.684088887888572
   0.370094871307727   0.321098137596493   0.679444053990569
   0.369659876265660   0.311660987629520   0.674573447434195
   0.369198478375925   0.302189321765071   0.669467543316145
   0.368953553065968   0.297441754923663   0.666823220898243
   0.368141014798997   0.283159012211830   0.658508888069723
   0.367517070943677   0.273610633170910   0.652634117116186
   0.366810855401080   0.264048577245256   0.646479916529082
   0.366008539667398   0.254480438780862   0.640033618033686
   0.365095798458868   0.244915368035505   0.633281735200556
   0.364056930220885   0.235364703862042   0.626210134519530
   0.362876435600410   0.225841492932870   0.618804174108230
   0.362228095582959   0.221094884273383   0.614971123460961
   0.360026818090964   0.206941228178899   0.602928454319169
   0.358324899666178   0.197602942459778   0.594427685175011
   0.356413811431263   0.188371198692422   0.585532076592055
   0.354275349606638   0.179274132716186   0.576228096606687
   0.351892486088738   0.170343204785250   0.566502849112167
   0.349245135549556   0.161614777630451   0.556348374741638
   0.346315071757931   0.153128022966278   0.545759992424867
   0.344739015745364   0.148988205898264   0.540302459204065
   0.339541687526697   0.137048018967182   0.523287975350852
   0.335669785650153   0.129540742512718   0.511428072151690
   0.331461548911451   0.122442452633912   0.499182745884311
   0.326913712453980   0.115787349684195   0.486586464956975
   0.322028822760693   0.109601141112584   0.473684947257269
   0.316816480890235   0.103898613876535   0.460534146627398
   0.311294344797124   0.098684771934052   0.447193137151616
   0.308424444572101   0.096259385340578   0.440471948820505
   0.299424839602148   0.089682253716750   0.420216196658539
   0.293145930969852   0.085850656889621   0.406721780823658
   0.286691513882832   0.082429873848481   0.393311825322434
   0.280106385769755   0.079389994802262   0.380050285281387
   0.273437393424508   0.076702800237496   0.366996161363477
   0.266732332119953   0.074344018028546   0.354202760662410
   0.260038951874400   0.072294781043362   0.341717566954698
   0.256711916510839   0.071380106242082   0.335606489846001
   0.246882262379590   0.069053639449204   0.317869938342550
   0.240508133322959   0.067857103814856   0.306570544936783
   0.234330557275639   0.066935599661639   0.295740099298676
   0.228391770942287   0.066289979241396   0.285410744110685
   0.222727067391218   0.065933790675652   0.275597146520537
   0.217378450723827   0.065859661233562   0.266342093496695
   0.212374110485410   0.066085024661758   0.257651650935695
   0.210012142211881   0.066308573918947   0.253528904804121
   0.203520079495150   0.067444179612424   0.242055766251918
   0.199715714386034   0.068592710553705   0.235170940670770
   0.196082603265941   0.070321227242424   0.228746732795696
   0.191994491846063   0.073182830649273   0.222433852434336
   0.187392283426976   0.077102096899588   0.216188753763096
   0.187744820370470   0.077251588468039   0.213874485785978
   0.193154863657913   0.073606819040118   0.215423629390815
   0.198193436563366   0.070974625252739   0.216909750600324
   0.202903653335582   0.069435248580459   0.218331678850960
   0.205317252733013   0.068919592266398   0.219115166892888
   0.213331385964763   0.067830148426027   0.222070432130243
   0.219305039251364   0.067465786362940   0.224510236168076
   0.225753968167079   0.067382132300147   0.227289847780981
   0.232662999205019   0.067557104388480   0.230376174937528
   0.239995861886903   0.067985029964780   0.233734342585078
   0.247720929905011   0.068653337909487   0.237328800947175
   0.255821355474818   0.069532310291880   0.241121904915942
   0.264255122070609   0.070616595622995   0.245077588693560
   0.272997015188973   0.071883555446164   0.249158470932329
   0.282017462973669   0.073315693214041   0.253328002950845
   0.291285153875786   0.074899049847467   0.257551015957504
   0.300772768129187   0.076617824336165   0.261792940978197
   0.310455208485955   0.078456871676182   0.266020057277936
   0.320299865579941   0.080412994737555   0.270203228930395
   0.330291744711814   0.082467633890038   0.274309294045794
   0.335333532244554   0.083532434119004   0.276325343567900
   0.350606782460325   0.086875551760335   0.282187705401824
   0.360887523875784   0.089227194362745   0.285910504585310
   0.371225084313093   0.091679997480263   0.289458653976332
   0.381602473774675   0.094238731263712   0.292811075062695
   0.391998875568129   0.096915836502967   0.295952120055091
   0.402396923797375   0.099722930314951   0.298866743697340
   0.412779856303603   0.102673400693246   0.301542264374690
   0.423132142695560   0.105781209949176   0.303967580946946
   0.433435584104144   0.109064234748470   0.306137679282891
   0.443673586450713   0.112539124212579   0.308049730954654
   0.453830050869999   0.116221837883315   0.309704412498449
   0.463891028402849   0.120125612568507   0.311103434465830
   0.473841437035254   0.124263542379891   0.312254701699272
   0.483666286188480   0.128646790220139   0.313171885659913
   0.493355043751456   0.133280916304010   0.313865619567350
   0.498144354620742   0.135693803024517   0.314135190862664
   0.512278351053218   0.143316561200638   0.314663092283154
   0.521496528632300   0.148715447656337   0.314807679545344
   0.530544204898564   0.154361836338868   0.314812997891871
   0.539417366491991   0.160247693099719   0.314702950286560
   0.548113700334676   0.166363090427905   0.314501029909147
   0.556632290349693   0.172696771581821   0.314230431951014
   0.564973435290177   0.179236649503672   0.313913604633704
   0.573138457541079   0.185970360070650   0.313571268685200
   0.581129327615866   0.192885489046925   0.313223993941839
   0.588948619355447   0.199970209717753   0.312889222115901
   0.596599181091224   0.207212956082026   0.312585230311212
   0.604084016967327   0.214603314902063   0.312326526411707
   0.611406207273188   0.222131246970232   0.312128813964352
   0.618568652588772   0.229787992491799   0.312004638387289
   0.625574165004350   0.237565350711527   0.311966983149123
   0.629018920169859   0.241496891919225   0.311984471956457
   0.639124338784021   0.253453654619831   0.312196896120640
   0.645673493826454   0.261552031616153   0.312486737539353
   0.652074172902773   0.269746505252367   0.312905606058192
   0.658328080113450   0.278032109576656   0.313464344795264
   0.664436324698788   0.286404836142562   0.314172234036070
   0.670399595476762   0.294861263092530   0.315038139568722
   0.676218979244097   0.303397627924504   0.316072493723059
   0.681894571509445   0.312011332805507   0.317283804892450
   0.687426564351696   0.320699705351381   0.318681376222777
   0.692815448467649   0.329459846470427   0.320275431531467
   0.698060815358177   0.338289763260486   0.322074788552181
   0.703162494588142   0.347187237195980   0.324089136794912
   0.708120595684205   0.356149855233803   0.326328618856445
   0.712934668397735   0.365175705198568   0.328802742703832
   0.717604449081338   0.374262727106862   0.331521386209589
   0.719885214905499   0.378828488393373   0.332975552002454
   0.726511229002275   0.392611312679258   0.337732594200567
   0.730748207548452   0.401868526884681   0.341244953304682
   0.734841335985649   0.411177870045195   0.345041694708091
   0.738791400245993   0.420536729923153   0.349132601485424
   0.742599215997332   0.429942540361339   0.353527092453746
   0.746266157891634   0.439392450449735   0.358234391423006
   0.749794205471705   0.448883334815488   0.363263375583603
   0.753185663690466   0.458411991729496   0.368622366422348
   0.756443415771407   0.467975014379485   0.374319090375435
   0.759571111053401   0.477568712220571   0.380360657784311
   0.762573335540526   0.487189066734158   0.386753350378380
   0.765454925933305   0.496832129097272   0.393502540001154
   0.768221765997353   0.506493623712879   0.400612570894169
   0.770880919623025   0.516168926434691   0.408086675846490
   0.773440218298899   0.525853320934516   0.415926795397644
   0.774684947460632   0.530697493847767   0.419984403569638
   0.778293458076331   0.545230594884266   0.432706647838971
   0.780607747494838   0.554913357448906   0.441643324263646
   0.782862252644409   0.564585331111669   0.450939858237063
   0.785068450196068   0.574241700361784   0.460591162069050
   0.787239041081883   0.583877437445572   0.470590395821334
   0.789387377662519   0.593487542174560   0.480929138153577
   0.791528328434756   0.603066705931472   0.491596670216464
   0.793675596986650   0.612610293340722   0.502581612912694
   0.795842923795838   0.622113788084511   0.513871240919098
   0.798044478151366   0.631572582250896   0.525451081448348
   0.800294153897540   0.640982133067499   0.537305351851410
   0.802605311461129   0.650337937481039   0.549416915846036
   0.804990547908103   0.659635450275642   0.561767451105470
   0.807461404509694   0.668870009539886   0.574337463734596
   0.810028094665207   0.678036726739718   0.587106269080828
   0.811350140117633   0.682593015462434   0.593558489090508
   0.815481466272795   0.696145055083081   0.613152212093226
   0.818379311644982   0.705074381896351   0.626382454789333
   0.821394720556564   0.713910914195160   0.639717666976728
   0.824526812945028   0.722646143120889   0.653131379154226
   0.827771607235345   0.731270233240781   0.666595702046830
   0.831121635290963   0.739771846476386   0.680081252036315
   0.834565690556658   0.748137947999213   0.693556976498638
   0.838091234761320   0.756353148608086   0.706985613902130
   0.841677507668452   0.764401012009829   0.720332993872846
   0.845298107319551   0.772263386010447   0.733563682405415
   0.848922455631176   0.779920214076501   0.746637192936644
   0.852519072077084   0.787349361335484   0.759499414878969
   0.856040223147254   0.794529636015506   0.772106100376741
   0.859434637030024   0.801439230995008   0.784397887513839
   0.862656010511276   0.808055238042615   0.796282666437655
   0.864183437239410   0.811246442246535   0.802046126968640
   0.868399546958186   0.820308755121815   0.818416389631290
   0.870938467172975   0.825868578894385   0.828384972611496
   0.873351713609163   0.830967152512726   0.837488510011971
   0.875714587099614   0.835530231847239   0.845755375190271
   0.878022984366490   0.839501656185401   0.853306453524589
   0.880192933156958   0.842852248247786   0.860273999271566
   0.882115424894016   0.845570072545593   0.866737650462333
   0.883691271458980   0.847648917615193   0.872741471014416
   0.884851381599086   0.849084264228938   0.878282352853725
   0.885547148119524   0.849871742836316   0.883362061211709
   0.885711551228456   0.850021861158563   0.885725389900871
   ];

P = size(values,1);
map = interp1(1:size(values,1), values, linspace(1,P,m), 'linear');