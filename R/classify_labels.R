#####################################################
# For each major label, we collect a list of        #
# regular expressions to identify subsidary labels. #
#####################################################

labels_warner = c('Warner Music' = 'warner[ ]music|warner[ ]records|warner[ ]home|warner[ ]special|warner[ ]strategic|warner[.]esp|Warner[ ][A-Z]',
                  'Asylum Records' = '^asylum$|asylum|asylum[ ]records|atlantic[ ]records|atlantic[/]|[/][ ]atlantic([|]|$)|atlantic[ ]nashville|atlantic[ ]recording[ ]corporation|[/]atlantic([|]|$)|elektra asylum|([|]|^)atlantic([|]|$)|elektra[ ]records|[/]elektra|elektra[/]|([|]|^)elektra([|]|$)|warner[ ]music[ ]nashville|warner[ ]bros|elektra[ ]nashville|asylum worldwide|[/][ ]asylum',
                  'Big Beats Records' = 'big[ ]beat[ ]|([|]|^)big beat([|]|$)|[/]big beat|big beat[/]|big beat$',
                  'Canvasback Music' = 'canvasback',
                  'Parlophone Label Group' = 'parlophone|FFR[ ]records|([|]|^)FFRR([|]|$)|emi[ ]classics|[ ]erato[ ]|([|]|^)erato|warner[ ]classics|([|]|^)erato[ ]|[/]erato|erato[/]',
                  'Reprise Records' = '([|]|^)reprise[ ]|[/]reprise|reprise[/]|^reprise',
                  'Fueled By Ramen' = 'Fueled[ ]by[ ]ramen',
                  'Nonesuch Records' = 'nonesuch[ ]records|([|]|^)nonesuch([|]|$)|[/]nonesuch|nonesuch[/]',
                  'Rhino Entertainment' = 'rhino[ ]entertainment|([|]|^)rhino|[/]rhino|rhino[/]',
                  'Roadrunner Records' = '([|]|^)roadrunner|[/]roadrunner|roadrunner[/]',
                  'Sire Records' = '([|]|^)sire[ ]records|([|]|^)sire[ ]|([|]|^)sire[ ]([|]|$)|^sire$',
                  'East West' = 'east[ ]west|eastwest',
                  'Warner (all combined)' = '([|]|^)warner|[(]warner[)]|asylum[ ]records|big[ ]beat[ ]records|canvasback[ ]music|parlophone[ ]label[ ]group|reprise[ ]records|fueled[ ]by[ ]ramen|nonesuch[ ]records|rhino[ ]entertainment|roadrunner[ ]records|sire[ ]records|east[ ]west|[ ]warner[/]',
                  'WM' = '^WM$|^WM[ ]|[/]wm|WM[/]|[/]WMI|[ ]WMI|WMI[ ]',
                  '300 entertainment' = '300[ ]entertainment|300[ ]produ',
                  '679 recordings' = '679 recordings',
                  'barsuk' = 'barsuk',
                  'blix street' = 'blix street',
                  'bloodshot' = 'bloodshot',
                  'elektra' = '([|]|^)elektra[ ]',
                  'gold typhoon' = 'gold typhoon',
                  'hopeless records' = 'hopeless records',
                  'I scream records' = 'i scream records',
                  'matador' = '^matador[ ]|^matador$',
                  'alligator records' = 'alligator records',
                  'nettwerk' = 'nettwerk',
                  'owsla' = 'owsla',
                  'poe boy'= 'poe boy',
                  'rec. 118' = 'rec. 118',
                  'rise records' = '^rise records',
                  'spinnin' = "spinnin'|spinnin[ ]|spinninrecords",
                  'vice records' = '^vice records',
                  'wea' = '^wea[ ]',
                  'watertower' = 'watertower',
                  '143'= '^143$|^143[/]',
                  'blue corn and blue horizon'= 'blue[ ]corn|blue[ ]horizon',
                  'carpark'= 'carpark',
                  'defstar'='defstar',
                  'funzalo'='funzalo',
                  'ice age' = 'ice[ ]age[ ]entertainment',
                  'jemp records' = 'jemp records',
                  'napalm records'= 'napalm[ ]records',
                  'saddle creek'= 'saddle[ ]creek')

labels_universal = c('Universal Music Group' = '([|]|^)universal|[/]universal|universal[/]|([|]|^)universal[ ]music[ ]japan|([|]|^)universal[ ]sigma|([|]|^)universal[ ]international|([|]|^)geneon[ ]universal|nbcuniversal|universal[ ]licensing[ ]music|([|]|^)universal[ ]music[ ]|universal[ ]music[ ]spain|universal[ ]m..z.k|([|]|^)universal records|([|]|^)universal[ ]records[ ]|([|]|^)universal[ ]republic[ ]records|^Republic$',
                     'Capitol Music Group' = 'capitol|astralwerks|blue[ ]{0,2}note|deep[ ]{0,2}well|([|]|^)metamorphosis|motown|quality[ ]{0,2}control|([|]|^)virgin[ ]|([|]|^)virgin([|]|$)|[/]virgin|virgin[/]|[/][ ]virgin[ ]',
                     'Decca Classics' = '^decca$|^decca[ ]|^ecm|^mercury|^mercury[ ]classics|^mercury[ ]records|mercury[ ]records',
                     'Def Jam Recordings' = 'def[ ]{0,2}jam|artium|g.o.o.d|([|]|^)good([|]|$)|good[ ]records',
                     'Deutsche Grammophon' = 'deutsche[ ]grammophon|grammophon',
                     'Eagle Rock Entertainment' = 'eagle[ ]rock|^eagle[ ]records|[/]eagle[ ]records|[/][ ]eagle records',
                     'EMI' = '^emi[ ]|[ ]emi[ ]|([|]|^)emi[ ]music|[/]emi|emi[/]|[-]emi|([|]|^)emi([|]|$)|[ ]emi([|]|$)',
                     'Interscope' = '^intersc[.]|^intersc$|interscope|geffen|A[&]M|([|]|^)222([|]|$)|aftermath$|aftermath[/]|aftermath[ ]music|aftermath[ ]records|darkroom|dreamville|LVRN Records|Mad Love|kidinakorner|shady[ ]{0,2}records',
                     'Island Records' = '([|]|^)island[ ]mercury|([|]|^)island[ ]def[ ]jam|([|]|^)island[ ]records|4th & Broadway|universal[ ]island|([|]|^)island([|]|$)|[/]island|island[/]',
                     'Polydor Records' = '([|]|^)polydor[ ]|([|]|^)polydor[ ]([|]|$)|([|]|^)fiction[ ]records|([|]|^)fiction([|]|$)|polydor',
                     'Republic Records' = '^republic$|^republic[ ]recordings|([|]|^)republic[ ]record|[/]republic|republic[/]|universal[ ]republic|([|]|^)american[ ]recordings|([|]|^)Brushfire[ ]records|casablanca[ ]records|([|]|^)cash[ ]money[ ]records|john[ ]varvatos|([|]|^)lava[ ]records|lightworkers',
                     'Republic Records 2' = '([|]|^)republic[ ]records|([|]|^)american[ ]recordings|([|]|^)Brushfire[ ]records|([|]|^)casablanca[ ]records|([|]|^)cash[ ]money[ ]records|john[ ]varvatos|([|]|^)lava[ ]records|lightworkers',
                     'Universal Music Enterprises' = '([|]|^)universal[ ]|([|]|^)universal([|]|$)|T[-]boy',
                     'Universal Music Group Nashville' = 'capitol[ ]{0,1}records[ ]{0,1}nashville|emi[ ]{0,1}records[ ]{0,1}nashville|mca[ ]{0,1}nashville|mercury[ ]{0,1}nashville|show[-]{0,1}dog',
                     'Universal Music Latin Entertainment' = 'capitol[ ]{0,1}latin|disa[ ]{0,1}records|fonovisa|machete[ ]{0,1}music|universal[ ]{0,1}music[ ]{0,1}latino',
                     'Verve Label Group' = '^verve|^verse[ ]|verve[ ]label[ ]group|verve[/]|[/]verve|verve[ ]{0,1}records|decca[ ]{0,1}gold|universal[ ]{0,1}music[ ]{0,1}classics|decca[ ]{0,1}broadway|verve[ ]{0,1}group|([|]|&)verve([|]|$)|verve[ ]{0,1}music[ ]{0,1}group',
                     'PM:AM Recordings' = 'PM[:]AM|pm[ ]{0,1}am',
                     'Spinefarm Records' = 'spinefarm',
                     'SpinnUp' = 'SpinnUp',
                     'Disques Barclay' = 'disques[ ]{0,1}barclay|([|]|^)barclay|^barclay|[/]barclay',
                     'Varese Sarabande' = 'var.se',
                     'Digital Distribution Trinidad and Tobago' ='Digital Distribution Trinidad and Tobago',
                     'Universal Music (combined)' = 'varese[ ]sarabande|disques[ ]barclay|spinnup|spinefarm[ ]records|pm:am[ ]recordings|verve[ ]label[ ]group|universal[ ]music[ ]latin[ ]entertainment|universal[ ]music[ ]group[ ]nashville|universal[ ]music[ ]enterprises|republic[ ]records|polydor[ ]records|island[ ]records|interscope|eagle[ ]rock[ ]entertainment|deutsche[ ]grammophon|def[ ]jam[ ]recordings|decca[ ]classics|capitol[ ]music[ ]group|universal[ ]music[ ]group',
                     'Abbey Road' = 'abbey[ ]road|bravad',
                     'others' = 'xo records|young money|shady records|spinefarm rec|u[-]live',
                     'UMe' = '([|]|^)UMe[ ]|Avenue Records/UMe|Alpha Dog 2T/UMe|([|]|^)UMe([|]|$)|[/]ume$|[/][ ]ume$',
                     'all star records' = 'all[ ]star[ ]records',
                     'cinepoly'= 'cinepoly',
                     'copenhagen records' = 'copenhagen[ ]records',
                     'DEP' = '^dep[ ][/]|^dep[/]|[/]dep([|]|$)|[/][ ]dep',
                     'delicious vinyl' = '^delicious vinyl',
                     'el cartel' ='^el cartel media|^el cartel record|^el cartel music|[/]el cartel|^el cartel$|^el cartel studio',
                     'fontana' = 'fontana north|[/]fontana([|]|$)|[/][ ]fontana([|]|$)|^fontana|umi[ ]fontana',
                     'g-unit' = 'g-unit',
                     'hip-o' = 'hip-o',
                     'impulse' = 'impulse[!]|impulse[ ]records',
                     'photo finish' = 'photo finish',
                     'roc nation'= 'roc nation|rocnation',
                     'roc-a-fella' = 'roc-a-fella',
                     'top dawg' = 'top dawg',
                     'umle' = '^umle',
                     'vertigo'= 'vertigo',
                     'caroline' = '[/][ ]caroline[ ][/]|^caroline international|^caroline license|caroline benelux|caroline music|caroline records|caroline[ ]distribution|^caroline$|Caroline Australia|[/]caroline|[(]caroline[])]',
                     'harvest records' = '^harvest record|[/]harvest records',
                     'shady records' = 'shady[ ]records|shady[/]|[/]shady',
                     'flow music'= '^flow[ ]music$|Mella Records - Flow La Movie - Flow Music|2017 Flow Music|2016 Flow Music|2016 Flow La Movie & Flow Music',
                     'concord' = 'concord[ ]|concord[/]',
                     'disa' = '[/]disa|disa[ ]',
                     'dreamworks' = 'dreamworks',
                     'grp'='^grp$|grp[ ]records|[/]grp',
                     'indie pop'= 'indie-pop|indie[ ]pop',
                     'linfair'= 'linfair',
                     'mca records'='mca[ ]records',
                     'universal music'= 'universal[ ]music',
                     'streamline' = 'streamline$|streamline[ ]|streamline[/]',
                     'umg'= '^umg[ ]|[ ]umg[ ]|^umg[/]|[ ]umg[/]|umgi',
                     'downtown'= 'downtown[ ]music|downtown record',
                     'angel records' = '^angel records$|angel records canada|angel records international',
                     'ninetone' = '^ninetone$|^ninetone rec',
                     'others' = '^Pina Rec|^pina$|^rebell army$|^silent rec',
                     'disney' = 'disney|walt[ ]disney')

labels_sony = c('Columbia Records'='CBS[ ]columbia|([|]|^)columbia|hypnotize[ ]minds|[/]columbia|[/]columbia[/]|[/][ ]columbia|columbia[/]',
                'Columbia Records 2' = 'dreamville[ ]entertainment|small.*giant|startime[ ]international|blue[ ]propaganda',
                'RCA Records' = '([|]|^)rca[ ]|([|]|^)bystorm.*entertainment|([|]|^)nappy[ ]boy|([|]|^)j[ ]records',
                'Epic Records' = '([|]|^)battery[ ]records|([|]|^)freebandz|([|]|^)bad[ ]{0,1}boy[ ]records|([|]|^)volcano|vested[ ]in[ ]culture',
                'Sony Music Nashville' = 'sony[ ]music|([|]|^)arista|([|]|^)columbia[ ]nashville|rca[ ]records[ ]nashville|[/]sony|sonybmg',
                'Zomba Music Group' = '([|]|^)zomba|([|]|^)jive[ ]records|([|]|^)verity',
                'RED Music Distribution' = '([|]|^)red[ ]music[ ]|odd[ ]future|[ ]red ink|^red[ ]ink|[/]red ink|[/][ ]red ink|cinematic[ ]music|([|]|^)reach[ ]records',
                'Legacy Recordings' = '([|]|^)legacy[ ]recordings|([|]|^)legacy[ ]records|([|]|^)laface',
                'Sony Music Latin' = 'sony.*latin',
                'Ariola Records' = '^ariola',
                'Sony Masterworks' = 'sony[ ]masterworks|([|]|^)bluebird|rca bluebird$|([|]|^)okeh|portrait[ ]records|([|]|^)portrait|([|]|^)arte[ ]nova|sony[ ]classical|flying[ ]buddha|([|]|^)masterworks',
                'Provident Label Group' = '([|]|^)provident|essential[ ]records|flicker[ ]records|beach[ ]street|reunion[ ]records|essential[ ]worship',
                'Century Media Records' = 'century[ ]media|([|]|^)century record|people[ ]like[ ]you|insideout[ ]music|superball[ ]music',
                'Sony Music Entertainment' = 'Sony[ ]BMG|([|]|^)BMG|columbia[ ]music|sony[ ]music|Columbia[ ]records|([|]|^)RCA$|^RCA[ ]|^RCA[ ]Records|[ ]rca[ ]records|[/]RCA[ ]records|[/][ ]RCA[ ]records|Sony[ ]Music[ ]Nashville|Zomba[ ]Music[ ]Group|RED[ ]Music[ ]Distribution[ ]|Legacy[ ]Recordings|Sony[ ]Music[ ]Latin|Ariola[ ]Records|Sony[ ]Masterworks|Provident[ ]Label[ ]Group|Century[ ]Media[ ]Records',
                'sony/ATV music publishing' = 'Sony/ATV|Sony ATV|atv music publishing|sony interactive|sony dadc|Sony Computer Entertainment|Sony Worldwide|sony entertainment|Sony Operating Thailand|2017 sony|sony beat|sony uk|sony urban|sony publishing|sony benelux|sony entertainment|sony digital publishing|^sony[ ][/]',
                'Filtr' = '([|]|^)Filtr([|]|$)|([|]|^)Filtr Kids',
                'Ultra records (llc)' = '([|]|^)Ultra Records|([|]|^)"Ultra Records',
                'disco:wax' = 'disco:wax',
                'x nashville' = 'arista nashville|columbia nashville|[ ]rca nashville',
                'azteca records' = 'azteca records',
                'black butter' = 'black butter',
                'cbs' = 'cbs([ ]|[/])|^cbs([|]|$)',
                'hub records' = '^hub record',
                'ministry of sound' = 'ministry of sound',
                'SME' = '^sme([ ]|[/])|^[(]sme([ ]|[/])|^sme([|]|$)|[/]sme[ ]|sme korea',
                'sony interactive entertainment'  = 'sony interactive entertainment|Sony Pictures Entertainment|sonyatv|sony record|sony[ ][/][ ]japan|[/][ ]sony|^sony[ ]|^sony[/]|sony japan|Sony Soundtrax',
                'syco music' =  'syco music',
                'epic records 2' = '^Epic([|]|$)|^Epic[ ]Records|[/]Epic[ ]Records|epic[/]|[/]epic([|]|$)|^Epic[ ]amsterdam|^Epic[ ]germany|^Epic[ ]istanbul|^Epic[ ]oslo|^Epic[ ]deutschland|[/][ ]Epic([|]|$)|[/][ ]epic[ ]|[/][ ]epic[/]|epic[ ]gothenburg|epic north',
                'wind up'= 'wind-up records|wind-up - concord|^wind-up$',
                'ki/oon' = 'ki/oon',
                'metal blade' = 'metal blade',
                'polo grounds'='polo grounds',
                'the[ ]orchard'='the[ ]orchard',
                'sony int' = 'sony international',
                'freebandz' = '^freebandz|[ ]freebandz[ ]',
                'others'='^b1$',
                'Sony' = '^Sony$')

# All labels with 'bmg rights' are not from sony, so remove those from the classification
remove_from_sony = 'BMG[ ]rights'

# Combine lists
label_iter=list(warner=labels_warner, universal=labels_universal, sony=labels_sony)

#s='Ethan Chumley'
#which(sapply(labels_universal, function(l) grepl(l,s,ignore.case=T))==T)
#which(sapply(strsplit(labels_universal,'|',fixed=T)[[3]], function(l) grepl(l,s,ignore.case=T))==T)

#grepl(labels_universal[[3]])

#' Classify clear-text label name(s) into their parent (major-label) music labels
#'
#' @param labels A vector of clear-text (character) label names (e.g., "Bad Boy Records"), or combination of label names separated by forward slahes (e.g., "Atlantic/Warner Music Nashville")
#' @param concatenated Indicator, whether to return only a character vector with the final classification (default is FALSE)
#' @param split_slash Indicator, whether vector of label names (e.g., "Label A/WM Music") should be split into two separate labels ("Label A", "WM Music") before processing (default is TRUE)
#' @return Either a data frame of the same length as vector and three additional columns (sony, warner, universal), coded as 1 if clear-text label is part of one of the three major music labels, or not (0) (default). If `concatenated=TRUE`,
#' returns a vector of same length as input vector.
#'
#' @examples
#'
#' # Classify one label
#' classify_labels('Interscope')
#'
#' # Classify vector of labels
#' classify_labels(c('Republic Records', 'Epic/Legacy', 'WM Finland', 'Chillhop Records',  NA, 'Atlantic', ''))
#'
#' # Classify vector of labels, return one column as a response (`concatenated = TRUE`)
#' classify_labels(c('Republic Records', 'Epic/Legacy', 'WM Finland', 'Chillhop Records'), concatenated = TRUE)
#'
#'
#' @export
classify_labels <- function(labels, concatenated = FALSE, split_slash = T) {
  if (class(labels)=='factor') labels <- as.character(labels)

  obj = data.frame(label=labels)

  if (split_slash == T) {
    splitl = lapply(strsplit(labels,'/'), function(x) {
      if (length(x)==0) return('')
      trimws(x)
    })

    splitl2 = data.frame(lbl=unlist(splitl), grp=cumsum(unlist(lapply(splitl, function(x) {
      c(1, rep(0,length(x)-1))
    }))))
  } else {
  splitl2 = data.frame(lbl=labels, grp=seq(from=1, to=length(labels)))
  }

  for (lbl in names(label_iter)) {
    searchstring = paste(label_iter[[lbl]], collapse='|')

    splitl2[, lbl] <- 0
    splitl2[grepl(searchstring, splitl2$lbl, ignore.case=T), lbl] <- 1

    # remove bmg[ ]rights from sony classification
    if (lbl=='sony') {
      splitl2[grepl(remove_from_sony, splitl2$lbl, ignore.case=T), lbl] <- 0
    }

  }

  # aggregate back to level of labels
  out=do.call('rbind', lapply(split(splitl2[, names(label_iter)], splitl2$grp), function(x) as.numeric(colSums(x)>0)))
  colnames(out) <- names(label_iter)
  obj <- cbind(obj, out)

  if (concatenated==F) return(obj)
  apply(obj[,-1], 1, function(x) paste0(colnames(obj)[-1][x==1], collapse=','))

}



