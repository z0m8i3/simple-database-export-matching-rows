# Simple Database Row Export #
Incredibly simple script to export a table's row based on a defined key.

Handy for when collaborating with other developers and you wish to share the chunk of the database you're working on, without giving them the needless bloat of a full database export, or using complicated and monolithic diff scripts.

This script is companion to [Simple Database Row Import](../../../simple-database-row-import)

ie. *Select and export all rows from **foo** table with row **bar** that equals **stuff***

*The instructions below assume you're on a Linux system, though script will work on any platform that has MariaDB or MySQL installed.*
***
### To Use ###
- Edit the script's configuration to set the path and what table, row and key to target.

- Put database-export.sh somewhere on your system, ie. `/home/myuser/scripts/`

Make the script executable:

```bash
chmod +x /home/myuser/scripts/database-export.sh
```

Create an alias so you can trigger it from anywhere:

```bash
nano ~/.bashrc
```

Add the following to the bottom of your **.bashrc** file:

```bash
alias tblexport='/home/myuser/scripts/database-export.sh'
```

Update your bash config without requiring logout:

```bash
. ~/.bashrc
```

Run `tblexport` in your cli any time you need to export the table rows!
