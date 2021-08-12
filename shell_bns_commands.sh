
lalapps_inspinj \
-o inj.xml \
--m-distr fixMasses --fixed-mass1 1.2 --fixed-mass2 2.2 \
--t-distr uniform --time-step 7200 --gps-start-time 1000000000 --gps-end-time 1000086400 \
--d-distr volume --min-distance 1 --max-distance 1500 \
--l-dist random \
--i-distr uniform \
--f-lower 30 --disable-spin \
--waveform TaylorF2threePointFivePN
&
bayestar-sample-model-psd \
-o psd.xml \
--H1=aLIGOZeroDetHighPower \
--L1=aLIGOZeroDetHighPower \
--I1=aLIGOZeroDetHighPower \
--V1=AdvVirgo \
--K1=KAGRA \
--I1-scale=0.75
&
bayestar-realize-coincs \
-o coinc.xml \
inj.xml --reference-psd psd.xml \
--detector H1 L1 V1 I1 K1 \
--measurement-error gaussian-noise \
--snr-threshold 4.5 \
--net-snr-threshold 7.0 \
--min-triggers 2 \
--keep-subthreshold
&
bayestar-localize-coincs coinc.xml 
&
ligolw_sqlite --preserve-ids --replace --database coinc.sqlite coinc.xml
&
ligo-skymap-stats \
-o bayestar.tsv \
--database coinc.sqlite \
*.fits \
--contour 50 90 \
--area 10 100 \
--modes \
-j 8

ligo-skymap-plot-stats bayestar.tsv



