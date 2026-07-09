---
layout: page
title: code & data
permalink: /code-and-data/
description: Code, data, and replication materials from the lab's papers.
nav: true
nav_order: 3
---

Research code, datasets, and replication materials from the lab and collaborators. Links to the corresponding papers are on the [research]({{ '/research/' | relative_url }}) page.

## Code and replication materials

**Causal inference and policy learning**

- [Batch-adaptive annotations for causal inference](https://github.com/ezinne359/adaptive-causal-annotations) — batch-adaptive annotation allocation and AIPW estimation with expert and imputed labels; includes notebooks for simulated and RetailHero data (Nwankwo, Goldkind, Zhou, AISTATS 2026; maintained by Ezinne Nwankwo).
- [Empirical Gateaux derivatives for causal inference](https://proceedings.neurips.cc/paper_files/paper/2022/file/3848fef259495bfd04d60cdc5c1b4db7-Supplemental-Conference.zip) — supplementary code for computerized influence functions and finite-difference bias correction (Jordan, Wang, Zhou, NeurIPS 2022; zip download).
- [Structured Difference-of-Q](https://github.com/angelamzhou/structured-diff-q) — orthogonalized R-learner-style estimation of Q-function contrasts for offline RL (Cao & Zhou, AISTATS 2026).
- [Stateful offline contextual policy evaluation and learning](https://proceedings.mlr.press/v151/zhou22a/zhou22a-supp.zip) — supplementary code for sequential policy evaluation and learning with exogenous arrivals and resource states (Zhou, AISTATS 2022; zip download).
- [Interval estimation of individual-level causal effects](https://github.com/angelamzhou/Interval-Estimation-of-Individual-Level-Causal-Effects-Under-Unobserved-Confounding) — sensitivity-analysis bounds on CATE under unobserved confounding (Kallus, Mao, Zhou, AISTATS 2019).
- [Confounding-robust policy improvement](https://github.com/CausalML/confounding-robust-policy-improvement) — minimax-regret policy learning under unobserved confounding (Kallus & Zhou, NeurIPS 2018 / Management Science 2021).
- [Confounding-robust infinite-horizon OPE](https://github.com/CausalML/ConfoundingRobustInfiniteHorizon) — partially identified bounds for off-policy evaluation in infinite-horizon RL (Kallus & Zhou, NeurIPS 2020).
- [Continuous policy learning](https://github.com/CausalML/continuous-policy-learning) — off-policy evaluation and optimization with continuous treatments (Kallus & Zhou, AISTATS 2018).

**Algorithmic fairness**

- [xAUC](https://github.com/CausalML/xauc) — fairness metrics for bipartite ranking with risk scores (Kallus & Zhou, NeurIPS 2019).
- [Fairness with unobserved protected class](https://github.com/CausalML/FairnessWithUnobservedProtectedClass) — partial identification of disparity measures via data combination (Kallus, Mao, Zhou, Management Science 2020).
- [Disparate impact of personalized interventions](https://github.com/CausalML/interventions-disparate-impact-responders) — auditing personalized interventions with partially identified ROC/xROC curves (Kallus & Zhou, NeurIPS 2019).
- [Optimal and fair encouragement policy evaluation and learning](https://proceedings.neurips.cc/paper_files/paper/2023/file/2c7967a442300bff58e9d7b73aa26f24-Supplemental-Conference.zip) — supplementary code for optimal encouragement policies with fairness constraints and non-adherence (Zhou, NeurIPS 2023; zip download).

**Decision-aware machine learning**

- [Task-loss reweighted MSE](https://github.com/angelamzhou/opt-milp-taskloss) — reweighing prediction loss by decision regret for contextual stochastic optimization (Lawless & Zhou, 2022).
- [Off-policy evaluation with policy-dependent optimization response](https://proceedings.neurips.cc/paper_files/paper/2022/file/f074a994e062146561db9cdc63999efa-Supplemental-Conference.zip) — supplementary code for causal policy evaluation when outcomes feed a downstream linear optimization problem (Wang, Jordan, Zhou, NeurIPS 2022; zip download).

## Data

- [NYC bail reform synthetic controls](https://github.com/angelamzhou/empirical-evaluation-nyc-bail-reform-synth-control) — replication code and a constructed dataset of publicly reported crime data from 27 large municipalities, used to evaluate the impact of New York's bail reform (Zhou et al., Statistics and Public Policy).
