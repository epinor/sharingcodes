///Filtered coffee///

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tra, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failbla==1)
stcox doses1 doses2 doses3 i.roykstat i.fr_kok1 gender, strata(study)
levelsof fr_tra
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - bladder cancer") xtitle("Cups per day - filtered coffee") saving(blafil)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tra, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failoes==1)
stcox doses1 doses2 doses3 i.roykstat i.fr_kok1 b2.bmicat gender b2.alkogrcat, strata(study)
levelsof fr_tra
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - esophageal cancer") xtitle("Cups per day - filtered coffee") saving(oesfil)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tra, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failkid==1)
stcox doses1 doses2 doses3 i.roykstat i.fr_kok1 b2.bmicat gender, strata(study)
levelsof fr_tra
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - kidney cancer") xtitle("Cups per day - filtered coffee") saving(kidfil)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tra, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failpan==1)
stcox doses1 doses2 doses3 i.roykstat b2.bmicat gender i.fr_kok1 diab, strata(study)
levelsof fr_tra
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - pancreatic cancer") xtitle("Cups per day - filtered coffee") saving(panfil)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tra, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failsto==1)
stcox doses1 doses2 doses3 i.roykstat bmi gender i.fr_kok1 b2.alkogrcat, strata(study)
levelsof fr_tra
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - stomach cancer") xtitle("Cups per day - filtered coffee") saving(stofil)

graph combine blafil.gph oesfil.gph kidfil.gph panfil.gph stofil.gph

///Total coffee///
use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tot, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failbla==1)
stcox doses1 doses2 doses3 i.roykstat gender, strata(study)
levelsof fr_tot
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - bladder cancer") xtitle("Cups per day - total coffee") saving(blatot)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tot, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failoes==1)
stcox doses1 doses2 doses3 i.roykstat b2.bmicat gender b2.alkogrcat, strata(study)
levelsof fr_tot
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - esophageal cancer") xtitle("Cups per day - total coffee") saving(oestot)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tot, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failkid==1)
stcox doses1 doses2 doses3 i.roykstat b2.bmicat gender, strata(study)
levelsof fr_tot
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - kidney cancer") xtitle("Cups per day - total coffee") saving(kidtot)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tot, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failpan==1)
stcox doses1 doses2 doses3 i.roykstat b2.bmicat gender diab, strata(study)
levelsof fr_tot
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - pancreatic cancer") xtitle("Cups per day - total coffee") saving(pantot)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_tot, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failsto==1)
stcox doses1 doses2 doses3 i.roykstat bmi gender b2.alkogrcat, strata(study)
levelsof fr_tot
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - stomach cancer") xtitle("Cups per day - total coffee") saving(stotot)

graph combine blatot.gph oestot.gph kidtot.gph pantot.gph stotot.gph

///Boiled coffee///

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_kok, knots(0 0.003 4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failbla==1)
stcox doses1 doses2 i.roykstat i.fr_tra1 gender, strata(study)
levelsof fr_kok
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - bladder cancer") xtitle("Cups per day - boiled coffee") saving(blakok)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_kok, knots(0 0.003 4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failoes==1)
stcox doses1 doses2 i.roykstat i.fr_tra1 b2.bmicat gender b2.alkogrcat, strata(study)
levelsof fr_kok
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - esophageal cancer") xtitle("Cups per day - boiled coffee") saving(oeskok)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_kok, knots(0 0.003 4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failkid==1)
stcox doses1 doses2 i.roykstat i.fr_tra1 b2.bmicat gender, strata(study)
levelsof fr_kok
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - kidney cancer") xtitle("Cups per day - boiled coffee") saving(kidkok)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_kok, knots(0 0.003 4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failpan==1)
stcox doses1 doses2 i.roykstat b2.bmicat gender i.fr_tra1 diab, strata(study)
levelsof fr_kok
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - pancreatic cancer") xtitle("Cups per day - boiled coffee") saving(pankok)

use "\\homer.uit.no\mlu035\Desktop\Paper 3\norwegian4.dta", clear
mkspline doses = fr_kok, knots(0 0.003 4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(failsto==1)
stcox doses1 doses2 i.roykstat bmi gender i.fr_kok1 b2.alkogrcat, strata(study)
levelsof fr_kok
xbrcspline doses, matknots(knots) values(0 .003 .08 .1 .14 .2 .3 .36 .4 .5 .6 .7 .8 .9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3. 3.5 3.6 3.7 3.8 3.9 4 4.1 4.2 4.3 4.4 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - stomach cancer") xtitle("Cups per day - boiled coffee") saving(stokok)

graph combine blakok.gph oeskok.gph kidkok.gph pankok.gph stokok.gph
