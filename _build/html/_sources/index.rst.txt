.. Introduction to Geodynamic Modelling documentation master file, created by
   sphinx-quickstart on Tue May  8 14:38:52 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to the Introduction to Geodynamic Modelling course!
===========================================================

.. figure:: img/LK0042-cropped.gif
    :width: 700px
    :align: center
    :alt: A geodynamic model

The `Helsinki University Geodynamics Group <https://wiki.helsinki.fi/pages/viewpage.action?pageId=113252575>`__ is offering a one-week short course titled “Introduction to geodynamic modelling” for master's/PhD students and interested researchers.

Course goals
------------

- Understand the fundamental physical equations solved in numerical geodynamic models, how they work, and how they affect numerical experiments
- Learn how to convert the main equations used to model lithospheric deformation into simple programs
- Develop a background understanding of geodynamics that allows you to properly understand the behavior of geodynamic numerical models

.. toctree::
   :maxdepth: 2
   :caption: Course information

   course-info/course-info
   course-info/learning-goals
   course-info/grading
   course-info/resources
   course-info/licensing
   course-info/previous-years

.. toctree::
    :maxdepth: 2
    :caption: Day 1

    lessons/day-1/Course-overview.ipynb
    lessons/day-1/physical-processes
    lessons/day-1/solving-equations
    notebooks/day-1/python-basics.ipynb
    notebooks/day-1/Functions.ipynb
    notebooks/day-1/NumPy.ipynb
    notebooks/day-1/for-loops.ipynb
    notebooks/day-1/Conditional-statements.ipynb

.. toctree::
    :maxdepth: 2
    :caption: Day 2

    notebooks/day-2/fdbasics.ipynb
    notebooks/day-2/fdheat.ipynb
    notebooks/day-2/stability.ipynb
    notebooks/day-2/diffadv.ipynb

.. toctree::
    :maxdepth: 2
    :caption: Day 3

    notebooks/day-3/benchmarking.ipynb
    notebooks/day-3/stokes.ipynb
    notebooks/day-3/channel.ipynb

.. toctree::
    :maxdepth: 2
    :caption: Day 4

    notebooks/day-4/clusters.ipynb
    notebooks/day-4/putting-it-together.ipynb
    lessons/day-4/marker-in-cell
    notebooks/day-4/numerical-diffusion.ipynb
    lessons/day-4/intro-to-douar

.. toctree::
    :maxdepth: 2
    :caption: Day 5

    notebooks/day-5/CLI-tools.ipynb
    lessons/day-5/project-overview.ipynb

.. toctree::
    :maxdepth: 2
    :caption: Technical instructions

    instructions/cluster

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
