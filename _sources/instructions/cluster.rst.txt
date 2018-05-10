Using geo-hpcc cluster
======================

Connecting from Windows
-----------------------

To access the command line:

1. Open PuTTY
2. *Host name*: ``dh2-seismo1203.seismo.helsinki.fi``
3. Click *Open*
4. Type in the given username (``proxyuser``) and password
5. Give command ``ssh clusteruser@geo-hpfe.seismo.helsinki.fi``, where ``clusteruser`` is the provided username

To access the files:

1. Open WinSCP
2. Click *New Site*, fill in *Host name*: ``geo-hpfe.seismo.helsinki.fi``, *User name* (``clusteruser``) and *Password* will be provided.
3. Click *Advanced...*
4. Choose *Connection*, *Tunnel*, and check *Connect through SSH tunnel*
5. Fill in values: *Host name*: ``dh2-seismo1203.seismo.helsinki.fi``, *User name* (``proxyuser``) and *Password*
6. Click *OK*
7. Click *Save*
8. Click *Login*

WinSCP session will be saved, so that next time you can just double-click the hostname on the left, and the connection will be opened.

Connecting from Linux
---------------------

To access the command line:

1. ``ssh proxyuser@dh2-seismo1203.seismo.helsinki.fi``
2. ``ssh clusteruser@geo-hpfe.seismo.helsinki.fi``

Note, usernames need to be replaced with the provided individual usernames.

To copy files from DOUAR output to the current directory on loca machine:

1. ``scp -oProxyCommand="ssh -W %h:%p proxyuser@dh2-seismo1203.seismo.helsinki.fi" clusteruser@geo-hpfe.seismo.helsinki.fi:/globalscratch/clusteruser/douar/modelname/OUT/*.vtk .``

Running DOUAR models
--------------------

1. Modify the model *input file*, e.g., ``nano ~/douar/inputs/rift.txt``
2. *Submit* the job: ``~/bin/submitdouar.sh -i ~/douar/inputs/rift.txt -n 16``
3. *Monitor* the job status: ``squeue``
4. *Post-process* the output:

   - ``cd /globalscratch/clusteruser/douar/rift_20180514100500/OUT``
   - ``~/bin/process_outbin.sh``
   - Note that the directory name of the output is formed from the model name (``rift``) and the date and time of the job submission

5. Copy *VTK files* to your local machine (see instructions above) to be opened in ParaView

You can *cancel* your job with ``scancel jobid`` where jobid is the numerical ID of the job, and can be found using ``squeue``
