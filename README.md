# Data_CH-CHO
This repository accompanies the paper “A Sparse Bayesian Committee Machine Potential for Oxygen-containing Organic Compounds” by Soohaeng Yoo Willow, Seungwon Kim, D. ChangMo Yang, Miran Ha, Amir Hajibabaei, Jung Woon Yang, Kwang S. Kim, and Chang Woo Myung.

The figures in the paper are in the folder Figures. Using in the AutoForce package [link] and script, data for plotting all of the graphs in the main text and supplementary information can generate easily. Data folder are not uploaded here, because of a large amount of calculation data. But, compressed file is uploaded and provided to an external site (Zenodo) [link below].
If you want to running whole simulations, you have to install AutoForce python package. You can generate own SGPR_based machine learning models [model.pckl] through running AutoForce in the data file. 




ABSTRACT


Accurate and scalable interatomic potentials are essential for understanding ma-
terial properties at the atomic level; however, steep computational demands often
limit their application. Although recent advances in machine learning potentials
have been significant, extending kernel-based models to accommodate a broad range
of chemical compositions remains a major challenge. Here, we present the active ro-
bust Bayesian Committee Machine (RBCM) potential, specifically designed to han-
dle extensive datasets encompassing hydrocarbons (in gas, cluster, liquid, and solid
phases) and eight families of oxygen-containing organic compounds. By employing a
committee-based approach, the RBCM circumvents the poor scaling inherent to ker-
nel regressors, facilitating straightforward and cost-effective model expansion. Sys-
tematic benchmarking demonstrates its robustness in accurately describing complex
processes such as the Diels-–Alder reaction, structural strain effects, and π–π interac-
tions. These results highlight the RBCM’s potential as a powerful tool for developing
universal, ab initio-level machine learning potentials that offer both transferability
and scalability across diverse chemical systems.
