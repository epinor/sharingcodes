use "\\homer.uit.no\mlu035\Desktop\Brown cheese\browncheese (4).dta", clear
mkspline doses = slice, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(colorectal==1)
stcox doses1 doses2 doses3 i. milk_intake_tertiles i.energy_intake_tertiles i.wh_grain_bread_quartiles i.totkalsi3 i.PA_cat b2.alco_cat i.smoking_stat i.htgroup hoyde, nolog strata(subcohort)
testparm doses2 doses3
levelsof slice 
xbrcspline doses, matknots(knots) values(0 .01 .02 .03 .04 .05 .06 .07 .08 .09 .1 .11 .12 .13 .14 .15 .16 .17 .18 .19 .2 .21 .22 .23 .24 .25 .26 .27 .28 .29 .30 .31 .32 .33 .34 .35 .36 .37 .38 .39 .40 .41 .42 .43 .44 .45 .46 .47 .48 .49 .50 .51 .52 .5362499952316284 .54 .55 .56 .57 .58 .59 .60 .61 .62 .63 .64 .65 .66 .67 .68 .69 .70 1.072499990463257 1.338750004768372 1.875 2.411250114440918 2.677500009536743 3.213749885559082 3.75 4.6875 5.223750114440918 6.026249885559082 6.5625 7.5 8.036250114440918 8.838749885559082 9.375 12.1875 15) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - colorectal cancer") xtitle("Slices per day") saving(colorec)

use "\\homer.uit.no\mlu035\Desktop\Brown cheese\browncheese (4).dta", clear
mkspline doses = slice, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(colonCa==1)
stcox doses1 doses2 doses3 i. milk_intake_tertiles i.energy_intake_tertiles i.wh_grain_bread_quartiles i.totkalsi3 i.PA_cat b2.alco_cat i.smoking_stat i.htgroup hoyde, nolog strata(subcohort)
testparm doses2 doses3
levelsof slice 
xbrcspline doses, matknots(knots) values(0 .01 .02 .03 .04 .05 .06 .07 .08 .09 .1 .11 .12 .13 .14 .15 .16 .17 .18 .19 .2 .21 .22 .23 .24 .25 .26 .27 .28 .29 .30 .31 .32 .33 .34 .35 .36 .37 .38 .39 .40 .41 .42 .43 .44 .45 .46 .47 .48 .49 .50 .51 .52 .5362499952316284 .54 .55 .56 .57 .58 .59 .60 .61 .62 .63 .64 .65 .66 .67 .68 .69 .70 1.072499990463257 1.338750004768372 1.875 2.411250114440918 2.677500009536743 3.213749885559082 3.75 4.6875 5.223750114440918 6.026249885559082 6.5625 7.5 8.036250114440918 8.838749885559082 9.375 12.1875 15) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - colon cancer") xtitle("Slices per day") saving(colon)

use "\\homer.uit.no\mlu035\Desktop\Brown cheese\browncheese (4).dta", clear
mkspline doses = slice, nk (4) cubic
mat knots = r(knots)
stset attage, id(id) time0(startald) failure(rectalCa==1)
stcox doses1 doses2 doses3 i. milk_intake_tertiles i.energy_intake_tertiles i.wh_grain_bread_quartiles i.totkalsi3 i.PA_cat b2.alco_cat i.smoking_stat i.htgroup hoyde, nolog strata(subcohort)
testparm doses2 doses3
levelsof slice 
xbrcspline doses, matknots(knots) values(0 .01 .02 .03 .04 .05 .06 .07 .08 .09 .1 .11 .12 .13 .14 .15 .16 .17 .18 .19 .2 .21 .22 .23 .24 .25 .26 .27 .28 .29 .30 .31 .32 .33 .34 .35 .36 .37 .38 .39 .40 .41 .42 .43 .44 .45 .46 .47 .48 .49 .50 .51 .52 .5362499952316284 .54 .55 .56 .57 .58 .59 .60 .61 .62 .63 .64 .65 .66 .67 .68 .69 .70 1.072499990463257 1.338750004768372 1.875 2.411250114440918 2.677500009536743 3.213749885559082 3.75 4.6875 5.223750114440918 6.026249885559082 6.5625 7.5 8.036250114440918 8.838749885559082 9.375 12.1875 15) ref(0) eform gen(cups rr lb ub)
twoway (line lb ub rr cups, lp(- - l) lc(black black black) ), scheme(s1mono) legend(off)  ytitle("Risk ratio - rectal cancer") xtitle("Slices per day") saving(rectal)

graph combine colorec.gph colon.gph rectal.gph


