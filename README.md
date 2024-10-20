# Evolutionary algorithms for multi‑objective stochastic resource availability cost problem

The code repository for "Evolutionary algorithms for multi‑objective stochastic resource availability cost problem" [paper](https://link.springer.com/article/10.1007/s12597-020-00447-8) (OPSEARCH). If you use any content of this repo for your work, please cite the following bib entry:
  
    @inproceedings{
        10454082,
        author={Arjmand, Masoud, and Najafi, Amir Abbas, and Ebrahimzadeh, Majid},
        booktitle={2020 Operational Research Society of India (OPSEARCH)}, 
        title={Evolutionary algorithms for multi‑objective stochastic resource availability cost problem}, 
        year={2020},
        pages={935–985},
        publisher={Springer}
        doi={https://doi.org/10.1007/s12597-020-00447-8}
    }



## Abstract
This paper investigates the resource availability cost problem in a PERT-type network, where both activity duration and resource requirement are considered stochastic parameters. The problem has two objective functions which the first one, namely the project’s makespan, is to minimize the project’s duration. However, the second one tries to minimize the total cost of resources. Since its NP-hardness is proven in a strong sense, four well-known evolutionary algorithms including strength Pareto evolution algorithm II, non-dominated sorting genetic algorithm II, multi-objective particle swarm optimization, and Pareto envelope-based selection algorithm II are proposed to solve the problem. Furthermore, to enhance the algorithms’ performance, some efficient mutation and crossover operators, as well as two novel operators called local search and movement, are employed to solve the structure for producing new generations. Also, in order to tackle uncertainty, Monte-Carlo simulation is utilized. The Taguchi method is used to tune the effective parameters. The performance of our proposed algorithms is evaluated by numerical test problems of different sizes which are generated based on PSPLIB benchmark problems. Finally, to assess the relative performance of the four proposed algorithms, six well-known performance criteria are employed. Using relative percentage deviation and the TOPSIS approach, the performance of algorithms is elucidated.


## Meta-heuristic Algorithms

The following algorithms are employed to solve the problem:

- [NSGA-II](https://ieeexplore.ieee.org/document/996017)
- [MOPSO](https://ieeexplore.ieee.org/document/1004388)
- [SPEA-II](https://neo.lcc.uma.es/emoo/zitzler01.ps.gz)
- [PESA-II](https://dl.acm.org/doi/10.5555/2955239.2955289)

## Dataset
We provide the source code on three benchmark datasets including J10, J20, and J30 from PSPLIB which is the standard library for project scheduling problems. Please follow the guidelines in [PSPlib-RCPSP](https://www.om-db.wi.tum.de/psplib/getdata_sm.html).

    
## Contact 
If there are any questions, please feel free to contact with the author: Masoud Arjmand (m.arjmand@ut.ac.ir). 
