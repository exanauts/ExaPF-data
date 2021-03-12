function mpc = case6ww
%CASE6WW

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin	lam_P	lam_Q	mu_Vmax	mu_Vmin
mpc.bus = [
	1	3	0	0	0	0	1	1.05	0	230	1	1.05	1.05	12.4922	0.0000	2299.5764	0.0000;
	2	2	0	0	0	0	1	1.05	-1.98487069	230	1	1.05	1.05	11.5646	0.0000	0.0000	2271.8581;
	3	2	0	0	0	0	1	1.07	-2.23701039	230	1	1.07	1.07	11.8766	0.0000	343.6889	0.0000;
	4	1	70	70	0	0	1	0.988199348	-3.06895918	230	1	1.05	0.95	15.6741	4.3451	0.0000	0.0000;
	5	1	70	70	0	0	1	0.985065958	-3.91966963	230	1	1.05	0.95	12.9389	1.1691	0.0000	0.0000;
	6	1	70	70	0	0	1	1.00461661	-4.1182295	230	1	1.05	0.95	12.2062	0.4232	0.0000	0.0000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf	mu_Pmax	mu_Pmin	mu_Qmax	mu_Qmin
mpc.gen = [
	1	77.2198674	25.7150437	100	-100	1.05	100	1	200	50	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	2	69.2680862	64.6499757	100	-100	1.05	100	1	150	37.5	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
	3	70.4204922	86.6441348	100	-100	1.07	100	1	180	45	0	0	0	0	0	0	0	0	0	0	0	0.0000	0.0000	0.0000	0.0000;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax	Pf	Qf	Pt	Qt	mu_Sf	mu_St	mu_angmin	mu_angmax
mpc.branch = [
	1	2	0.1	0.2	0.04	40	40	40	0	0	1	-360	360	15.4066	-9.5776	-15.1420	5.6967	0.0000	0.0000	0.0000	0.0000;
	1	4	0.05	0.2	0.04	60	60	60	0	0	1	-360	360	33.9511	22.4966	-33.1516	-23.4568	0.0000	0.0000	0.0000	0.0000;
	1	5	0.08	0.3	0.06	40	40	40	0	0	1	-360	360	27.8622	12.7960	-27.1107	-16.1965	0.0000	0.0000	0.0000	0.0000;
	2	3	0.05	0.25	0.06	40	40	40	0	0	1	-360	360	0.2870	-11.7606	-0.2546	5.1806	0.0000	0.0000	0.0000	0.0000;
	2	4	0.05	0.1	0.02	60	60	60	0	0	1	-360	360	41.7356	43.1061	-40.0593	-41.8325	7.8745	0.0000	0.0000	0.0000;
	2	5	0.1	0.3	0.04	30	30	30	0	0	1	-360	360	17.3533	14.9340	-16.8137	-17.4610	0.0000	0.0000	0.0000	0.0000;
	2	6	0.07	0.2	0.05	90	90	90	0	0	1	-360	360	25.0341	12.6737	-24.4850	-16.3843	0.0000	0.0000	0.0000	0.0000;
	3	5	0.12	0.26	0.05	70	70	70	0	0	1	-360	360	23.1793	21.5680	-21.9906	-24.2806	0.0000	0.0000	0.0000	0.0000;
	3	6	0.02	0.1	0.02	80	80	80	0	0	1	-360	360	47.4957	59.8955	-46.4508	-56.8250	0.0000	0.0000	0.0000	0.0000;
	4	5	0.2	0.4	0.08	20	20	20	0	0	1	-360	360	3.2109	-4.7107	-3.1885	-3.0320	0.0000	0.0000	0.0000	0.0000;
	5	6	0.1	0.3	0.06	40	40	40	0	0	1	-360	360	-0.8964	-9.0298	0.9358	3.2092	0.0000	0.0000	0.0000	0.0000;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0.00533	11.669	213.1;
	2	0	0	3	0.00889	10.333	200;
	2	0	0	3	0.00741	10.833	240;
];
