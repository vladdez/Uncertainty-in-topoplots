---
id: "perrin1989spherical"
title: "Spherical Splines for Scalp Potential and Current Density Mapping"
source_file: "The Art of Uncertain Topoplots/papers/perrin1989spherical.pdf"
source_sha256: "5d8e647db4c9c6338cf57b314ce6315c681c79d6585f345ea00c639688e75295"
extraction_format: 1
---

# Spherical Splines for Scalp Potential and Current Density Mapping — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
184                                                            Electroencephalography and clinical Neurophysiology , 1989, 72: 184-187
                                                                                           Elsevier Scientific Publishers Ireland, Ltd.

<a id="p001-b002"></a>

<!-- p001-b002 -->
EEG02274

<a id="p001-b003"></a>

<!-- p001-b003 -->
Short communication

<a id="p001-b004"></a>

<!-- p001-b004 -->
Spherical splines for scalp potential and current density mapping
                             F. Perrin, J. Pernier, O. Bertrand and J.F. Echallier
                                       U280 Inserm, 151 Cours A. Thomas, 69003 Lyon (France)

<a id="p001-b005"></a>

<!-- p001-b005 -->
(Accepted for publication: 12 September 1988)

<a id="p001-b006"></a>

<!-- p001-b006 -->
Summary         Description of mapping methods using spherical splines, both to interpolate scalp potentials (SPs), and to
approximate scalp current densities (SCDs). Compared to a previously published method using thin plate splines, the advantages are
a very simple derivation of the SCD approximation, faster computing times, and greater accuracy in areas with few electrodes.

<a id="p001-b007"></a>

<!-- p001-b007 -->
Key words: Spherical splines; EEG or evoked potential mapping; Scalp current density

<a id="p001-b008"></a>

<!-- p001-b008 -->
In preceding papers (Perrin et al. 1987a,b) we have shown          have to be defined: one from the real scalp surface to the
how the 2-dimensional thin plate splines of Duchon (1976) can          sphere, and one from the sphere to the plane.
be applied to map EEG or scalp evoked potential data (SP)
and to approximate scalp current densities (SCDs). In this note
we describe the method we currently use which is based on the          Projection from the real scalp surface onto the sphere
work of Wahba (1981, 1982) on spherical splines.
    It is usually considered that a thin plate spline corresponds          In the international 10-20 system one uses fractional dis-
to the surface taken up by an infinite, thin plate constrained to      tances between previously placed electrodes to locate new
pass through a finite number of known points. Instead of               electrodes. For example the C 3 position is defined at half way
considering the deformation of a thin plate, Wahba has consid-         (in curvilinear distance along the scalp surface) between C,
ered the deformation of a thin sphere constrained to pass              and T 3.
through a finite number of known points.                                   To project the scalp electrode positions on the sphere one
    The main advantage of these new interpolating surfaces is          follows on the sphere exactly the same procedure as that which
that they lead to simpler mathematical derivation and formula-         was used on the scalp (Estrin and Uzgalis, 1969) with the
tion of the SCD approximation. Consequently the computation            following conventions: the spherical projection C z of Cz is at
time of a SCD map becomes identical to the computation time            the top of the sphere; the spherical projections Fpz, O z of Fpz
of th¢ corresponding SP map.                                           and Oz are diametrically opposite in the equatorial line, as are
    To construct spatial maps of either scalp potentials or scalp      the projections T3, T 4. If a certain percentage of the scalp
current densities one must define precisely on which surface           curvilinear distance between two previously placed electrodes
the scalp potential or scalp current densities are computed and        is used to place a new electrode in between, then the same
what are the projections, first, between the scalp head surface        percentage of the spherical arc length between the projections
and the surface of computation and, second, between the                of the previously placed electrodes will be used to determine
surface of computation and the plane on which the final map is         the projection, on the sphere, of the new electrode. By so
drawn.                                                                 doing, each electrode projection may be precisely located by its
    Usually the surface of computation of scalp potential maps         spherical coordinates, for instance: C z (0, 0), C 3 (45, 180), Oz
is the projection plane. For SCDs we have used (Perrin et al.          (90, 270).
1987b) a sphere as surface of computation. At least for SCDs it
would be better if the surface of computation could be the
scalp head surface.                                                    Spherical interpolation
    In the following, the surface of computation for both SP
and SCD will be the sphere and therefore two projections will              The second step consists of interpolating the potential data.
                                                                       Wahba presented two related spherical interpolation methods,
                                                                       one using spherical spline surfaces, the other pseudo-spherical
   Correspondence to: F. Perrin, U280 Inserm, 151 Cours A.             spline surfaces. The difference between the two is that the
Thomas, 69003 Lyon (France).                                           mathematical expression of the latter depends on known func-

<a id="p001-b009"></a>

<!-- p001-b009 -->
0013-4649/89/$03.50 © 1989 Elsevier Scientific Publishers Ireland, Ltd.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
M A P P I N G WITH SPHERICAL SPLINES                                                                                                                185

<a id="p002-b002"></a>

<!-- p002-b002 -->
tions (logarithms, square roots, etc.), whereas the former de-                      the constant m chosen (it must be an integer greater than 1)
pends on an infinite series whose sum is not readily expressible                    one obtains a family of functions U. With a methodology
in terms of simple known mathematical functions. We tested                          identical to the one previously used (Perrin et al. 1987a), all
both and obtained slightly better results with the spherical                        values of m between 2 and 6 were tested on simulations and
spline interpolation method, which is presented here.                               the value of m equals 4 was chosen (Fig. 1). The function g(x)
    Let z, be the potential value measured at the i th electrode                    was tabulated once and for all, for 2000 values of x regularly
whose spherical projection will be denoted E i. The value at a                      disposed between - 1 and 1. If (x E, YE, ZE) and (x F, Yv, zv)
point E of the sphere, of the spherical spline U which inter-                       are the cartesian coordinates of E and F, and assuming a unit
polates the zis at the Eis is given by:                                             sphere (radius one) then
                         n
                                                                                                        (x~ _ x F)2+(yE _ yF)2+ (z~ _ ~ ) ~
U ( E ) = c o+           Y' cig(cos(E,         E i ) ),                     (1)     cos(E, F) = 1                           2                       (4)
                        i=I
where the cis are solutions of:                                                         It should be noted that Pn(X) c a n be computed via the
                                                                                    recurrence relation:
  GC + Tc 0 = Z,
  T'C =0,                                                                   (2)     (n+l)Pn+l(x)=(2n+l)xPn(x            )       nP,   l(x),
                                                                                    with P0 = l and P~ = x. It should be further noted that, for m
with
                                                                                    equals 4, the sum of the first 7 terms of the series is sufficient
T'=(1,I         .....        1),    C'=    (%,c 2 .....       %),                   to obtain a precision of 10 -6 on g(x) and that the resolution of
                                                                                    (2) can be done, for example, by subprograms SSPFA and
Z'=(z,,z         2. . . . . z . ) ,       O=(g,j) =(g(cos(E i,EJ))).
                                                                                    SSPSL of the LINPACK library (Dongarra et al. 1979).
Cos(E i, Ej) denotes the cosine of the angle between the
electrode projections Ei and E~.
    The function g(x) is defined as the sum of the following                        Projection from the sphere onto the plane
series:
                                                                                           Having computed the cis, the third step consists of evaluat-
            l     ~.2              2n+1        P,(x),                       (3)     ing the interpolated potential at each map pixel. This necessi-
g(x)   =G        n=l          n~,(n+l)     "
                                                                                    tates the choice of a projection from the sphere onto the plane.
where P,, is the nth degree Legendre polynomial. Depending on                       As before (Perrin et al. 1987b), a radial projection has been
                                                                                    used. Thus, each map pixel center M ' ( x ' , y ' ) has its back
                                                                                    p r o j e c t i o n M ( X M , YM, ZM), on the sphere, determined by:

<a id="p002-b003"></a>

<!-- p002-b003 -->
x M = kx',
                 •El- spherical m = 2
                                                                                        YM    ky',
                                                     RMS            error   %
                 "&" spherical m = 3
                                                                                        zM ( 1 - x ~ - y ~ , ,
100,00           "&- spherical m = 4
                                                                                    with
                 4,- spherical m = 5
                                                                                           sin(0)              ~ 2     ,2
 10,00           •0 - spherical m = 6                                               k         0       and 0 = V'x' + y
                 .m. thin plate m = 3
                                                                                    Knowing M, the quantities cos(M, E , ) = e i are easily calcu-
                                                                                    lated by (4) and then g(e i) is linearly interpolated between the
   I ,00
                                                                                    two nearest values of the g table. Having the g(e i }s and the c,s,
                                                                                    the value of the potential is given by (1).
  0,10

<a id="p002-b004"></a>

<!-- p002-b004 -->
Scalp current density estimations

<a id="p002-b005"></a>

<!-- p002-b005 -->
0,01 (7"                            !                   I           !         !
                                                                                        Due to the classical property that the 2-dimensional spheri-
      0,0                          0,2                0,4            0,6    0,8
                                                                                    cal laplacian of the Legendre polynomials is a multiple of the
                                               excentricity
                                                                                    same Legendre polynomial:
Fig. 1. RMS errors (evaluated at 5783 points regularly disposed
on a hemisphere) between 'true' potential values obtained from                      a P . = - ( 2 n + 1)e,,
a 3-concentric shell head model and interpolated potential                          the expression of the current density C(E), which is propor-
values obtained from the 'true' values at the 19 electrode                          tional to minus the 2-dimensional spherical laplacian of the
locations of the international 10-20 system. But for those of                       potential (Perrin et al. 1987b), becomes quite simple:
eccentricity 0, each point corresponds to the mean value of the                                  n
RMS errors of 15 dipoles of same eccentricity but differing                         C(E) = ]~ c,h(cos(E, E,)),                                      (S)
                   orientations and positions.                                                 i=l

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
186                                                                                                                                  F. P E R R I N ET A L

<a id="p003-b002"></a>

<!-- p003-b002 -->
1L:1[1. ~ ~]r,~:-,   J~',-          true                 0                                     BP      00                                   ic E,Pl
           /                                                                                                         i
                                                                                                                 f
         t( ÷                                    'li
                                                                    I
                                                                    ]

<a id="p003-b003"></a>

<!-- p003-b003 -->
t,

<a id="p003-b004"></a>

<!-- p003-b004 -->
l'
 *'-
      I~
                 4.0¢t :¢                                    4-.-        4.00    :¢                       *.'-           4. ~]~] :
                                                       B(: C, lO[1.g~3r,u---.÷ _S',-, k.hin I:,[ B (: [~ 1H(1. [1Eln,:~ .... F..~._ :oF, her i c 5( E,

<a id="p003-b005"></a>

<!-- p003-b005 -->
,, -         .(I?
Fig. 2. Above: scalp potential maps. Below: corresponding scalp current density maps, obtained from a 3-concentric shell head model
with a tangential current dipole located in the right part of the sphere, whereas the 16 electrodes are on the left part. From left to
   right: the 'true' maps, computed from the model at each pixel; the thin plate interpolated maps: the spherical interpolated maps.

<a id="p003-b006"></a>

<!-- p003-b006 -->
with                                                                                      Statistical methods are available to choose the optimal
                                                                                      value of lambda (Wahba and Wendelberger 1980). This may be
                1    ~      ( 2 n + 1)~ V.(x).                                        useful when potential measurements are noisy. Indeed, an
h(x) = --~          n~__1 n m ( n + l ) m                                             interpolation surface is constrained to pass through the poten-
    Thus if one tabulates h(x) in the same way one has tabu-                          tial values at the electrode sites, whereas an approximated
lated g(x), all one has to do to obtain C(E) is to replace, in the                    surface may smooth some irregularities due to the noise by
third step, g(x) by h(x) and eqn. (1) by eqn. (5). Thus the                           taking it into account in the computation procedure. Moreover,
computation time of C(M) will be exactly the same as that of                          the same procedure gives confidence intervals for the ap-
U(M). To appreciate the improvement in simplicity one should                          proximated m a p (Wahba 1983).
compare the above eqn. (5) to the corresponding eqn. (5) of the
previously published method (Perrin et al. 1987b). This corre-
sponds to a time improvement of 41%. To tabulate h(x), when                           References
m equals 4, with a precision of 10 -6, 20 terms are sufficient.
                                                                                      Dongarra, J.J., Bunch, J.R., Moler, C.B. and Stewart, G.W.
                                                                                         Linpack Users' Guide. SIAM, Philadelphia, PA, 1979.
Comments                                                                              Duchon, J. Interpolation de fonctions de deux variables suivant
                                                                                         le principe de flexion des plaques minces. R.A.I.R.O. Anal.,
    In simulations, thin plate splines and spherical splines give                         1976, 10: 5-12.
results which are quite similar in areas well covered by elec-                        Estrin, T. and Uzgalis, R. Computerized display of spatio-tem-
trodes, while they differ somewhat in undersampled areas,                                poral EEG patterns. IEEE Trans. Bio-med. Eng., 1969, 3:
where spherical splines seem to have a slight advantage over                              192-196.
thin plate splines (Fig. 2).                                                          Harder, R.L. and Desmarais, R.N. Interpolation using surface
    As Harder and Desmarais (1972) have already noted, the                                splines. J. Aircraft, 1972, 9: 189-191.
same computational scheme can be used to obtain approxima-                            Perrin, F., Pernier, J., Bertrand, O., Giard, M.H. and Echallier,
tions instead of interpolations, by choosing a positive lambda                           J.F. Mapping of scalp potentials by surface spline interpo-
and solving:                                                                              lation. Electroenceph. clin. Neurophysiol, 1987a, 66: 75-81.
                                                                                      Perrin, F., Bertrand, O. and Pernier, J. Scalp current density:
  ( G + X 1 ) C + T c 0 = Z,                                                              value and estimation from potential data. IEEE Trans.
  T'C =0.                                                                                 Bio-med. Eng., 1987b, 34: 283-288.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
M A P P I N G WITH SPHERICAL SPLINES                                                                                       187

<a id="p004-b002"></a>

<!-- p004-b002 -->
Wahba, G. Spline interpolation and smoothing on the sphere.       dated smoothing spline. J. Roy. Statist. Soc. B, 1983, 45:
  SIAM J. Sci. Star. Comput., 1981, 2: 5-16.                      133-150.
Wahba, G. Erratum: spline interpolation and smoothing on        Wahba, G. and Wendelberger, J. Some new mathematical
  the sphere. SIAM J. Sci. Stat. Comput., 1982, 3: 385-386.       methods for variational objective analysis using splines and
Wahba, G. Bayesian 'confidence intervals' for the cross-vali-     cross-validation. Monthly Weather Rev., 1980, 108: 36-57.
