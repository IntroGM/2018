Basic elements of Python
========================

Sources
-------

This lesson is inspired by the `Programming in Python lessons <https://v4.software-carpentry.org/python/index.html>`__ from the `Software Carpentry organization <http://software-carpentry.org/>`__.

Getting started
---------------

1. We can start by opening a new IPython window.
   To do this, open a new Terminal window and type ``ipython``.
   You should see an IPython prompt that looks something like the following:

   .. code:: bash

       $ ipython
       Python 3.5.2 |Anaconda custom (x86_64)| (default, Jul  2 2016, 17:52:12) 
       Type "copyright", "credits" or "license" for more information.

       IPython 5.1.0 -- An enhanced Interactive Python.
       ?         -> Introduction and overview of IPython's features.
       %quickref -> Quick reference.
       help      -> Python's own help system.
       object?   -> Details about 'object', use 'object??' for extra details.

       In [1]:    

Now we are ready to start.

Variables, arithmetic and modules
---------------------------------

We are assuming you already have some familiarity with Python, but we'll quickly review some basic features and operations.

1. Python can be used as a simple calculator.

   .. ipython:: python

       1 + 1
       5 * 7

2. The list of basic arithmetic operations that can be done by default
   in Python is in the table below.

   +------------------+----------+------------------+------------------+
   | Operation        | Symbol   | Example syntax   | Returned value   |
   +==================+==========+==================+==================+
   | Addition         | ``+``    | ``2 + 2``        | ``4``            |
   +------------------+----------+------------------+------------------+
   | Subtraction      | ``-``    | ``4 - 2``        | ``2``            |
   +------------------+----------+------------------+------------------+
   | Multiplication   | ``*``    | ``2 * 3``        | ``6``            |
   +------------------+----------+------------------+------------------+
   | Division         | ``/``    | ``4 / 2``        | ``2``            |
   +------------------+----------+------------------+------------------+
   | Exponentiation   | ``**``   | ``2**3``         | ``8``            |
   +------------------+----------+------------------+------------------+

   For anything more advanced, we need to use a *function*.
   Functions are pieces of code that perform a single action such as
   printing information to the screen (e.g., the ``print()`` function).
   Functions exist for a huge number of operations in Python.
   Python has a few basic functions available by default, but to use most functions we need to load a load a *module*.

   .. code:: python

       >>> import math
       >>> math.sin(3)
       0.1411200080598672
       >>> math.sqrt(4)
       2.0

   A *module* (or *library*) is a group of code items such as functions that are
   related to one another. Modules are loaded using ``import``.
   Functions that are part of the module ``modulename`` could then be
   used by typing ``modulename.functionname()``. For example, ``sin()``
   is a function that is part of the ``math`` module, and used by
   typing ``math.sin()`` with some number between the parentheses.
   Modules may also contain constants such as ``math.pi``.

   .. code:: python

       >>> math.pi
       3.141592653589793
       >>> math.sin(math.pi)
       1.2246467991473532e-16

4. Functions can also be combined.

   .. code:: python

       >>> print(math.sqrt(4))
       2.0
       >>> print('The square root of 4 is',math.sqrt(4))
       The square root of 4 is 2.0

5. *Variables* can be used to store values calculated in expressions and
   used for other calculations.

   .. code:: python

       >>> tempCelsius = 10.0
       >>> print(tempCelsius)
       10.0
       >>> print('temperature in Fahrenheit:', 9/5 * tempCelsius + 32)
       temperature in Fahrenheit: 50.0

6. Values stored in *variables* can also be updated.

   .. code:: python

       >>> tempCelsius = 15.0
       >>> print('temperature in Celsius is now:', tempCelsius)
       temperature in Celsius is now: 15.0
       >>> tempFahrenheit = 9/5 * tempCelsius + 32
       >>> print('temperature in Celsius:', tempCelsius, 'and in Fahrenheit:', tempFahrenheit)
       temperature in Celsius: 15.0 and in Fahrenheit: 59.0

7. One of the nice options in IPython is that you can see which
   variables are in memory by typing ``%whos``.

   .. code:: python

       >>> %whos
       Variable                  Type      Data/Info
       ---------------------------------------------
       TemperatureInFahrenheit   float     59.0
       temp_celsius              float     20.0

8. There are 4 basic *data types* in Python as shown in the table below.

   +------------------+------------------------+--------------+
   | Data type name   | Data type              | Example      |
   +==================+========================+==============+
   | ``int``          | Whole integer values   | ``4``        |
   +------------------+------------------------+--------------+
   | ``float``        | Decimal values         | ``3.1415``   |
   +------------------+------------------------+--------------+
   | ``str``          | Character strings      | ``'Hot'``    |
   +------------------+------------------------+--------------+
   | ``bool``         | True/false values      | ``True``     |
   +------------------+------------------------+--------------+

   The data types are displayed when using ``%whos``, but can also be
   found using the ``type()`` function. As you will see, the data types
   are important because some are not compatible with one another.

   .. code:: python

       >>> WeatherForecast = 'Hot'
       >>> type(WeatherForecast)
       str
       >>> type(TemperatureInFahrenheit)
       float
       >>> TemperatureInFahrenheit = TemperatureInFahrenheit + 5.0 * WeatherForecast
       ---------------------------------------------------------------------------
       TypeError                                 Traceback (most recent call last)
       <ipython-input-21-7046bdc97a54> in <module>()
       ----> 1 TemperatureInFahrenheit = TemperatureInFahrenheit + 5.0 * WeatherForecast

       TypeError: can't multiply sequence by non-int of type 'float'

Lists and indices
-----------------

Let's now consider an example of some rock samples collected during a recent field excursion.
Rather than having individual variables for each of the samples, we can store many related values in a *collection*.
The simplest type of *collection* in Python is a **list**.

1. Let's first create a list of selected ``SampleID`` values.

   .. code:: python

       >>> SampleIDs = ['DW-NP-03', 'DW-NP-12', 'DW-NP-33', 'DW-NP-48']
       >>> print(SampleIDs)
       ['DW-NP-03', 'DW-NP-12', 'DW-NP-33', 'DW-NP-48']
       >>> type(SampleIDs)
       list

   Here we have a list of 4 ``SampleID`` values in a list called
   ``SampleIDs``. As you can see, the ``type()`` function recognizes
   this as a list. Lists can be created using the square brackets (``[``
   and ``]``), with commas separating the values in the list.
2. To access an individual value in the list we need to use an **index
   value**. An **index value** is a number that refers to a given
   position in the list. Let's check out the first value in our list as
   an example:

   .. code:: python

       >>> print(SampleIDs[1])
       'DW-NP-12'

   Remember, Python (and many other programming languages) start values stored in collections with the index value 0.
3. We can find the length of a list using the ``len()`` function.

   .. code:: python

       >>> len(SampleIDs)
       4

   Just as expected, there are 4 values in our list and ``len(SampleIDs)`` returns a value of 4.

.. topic:: Exercise - Getting to know lists

   - Create a Python list containing 4 items/values and store it with the variable ``mylist``.
   - After you have created the list, check its data type, then use the index values to check the data types of the contents of the list.
   - What kinds of data can you store in lists? Does it all need to be the same data type?
   

