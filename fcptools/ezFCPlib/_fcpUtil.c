/*
  This code is part of FCPTools - an FCP-based client library for Freenet

  CopyLeft (c) 2001 by David McNab

  Developers:
  - David McNab <david@rebirthing.co.nz>
  - Jay Oliveri <ilnero@gmx.net>
  
  Currently maintained by Jay Oliveri <ilnero@gmx.net>
  
  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 2 of the License, or
  (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

#include "ezFCPlib.h"

#include <time.h>
#include <winbase.h>


extern char *_fcpTmpDir;


/*
  function xtoi()

  Convert a hexadecimal string into an int. This is the hex version of
	atoi.
*/
long xtoi(char *s)
{
  long val = 0;
  
  if (!s) return 0L;
  
  for (; *s != '\0'; s++)
    if (*s >= '0' && *s <= '9')
      val = val * 16 + *s - '0';
    else if (*s >= 'a' && *s <= 'f')
      val = val * 16 + (*s - 'a' + 10);
    else if (*s >= 'A' && *s <= 'F')
      val = val * 16 + (*s - 'A' + 10);
    else
      break;
  
  return val;
}


long file_size(char *filename)
{
	struct stat fstat;

	if (!filename) return -1;

	if (stat(filename, &fstat))
		return -1;
	else
		return fstat.st_size;
}


char *str_reset(char *dest, char *src)
{
	if (dest) free(dest);

	dest = (char*)malloc(strlen(src) + 1);
	strcpy(dest, src);

	/* on function exit, dest *may* not point to the same location it did when
		 the function was originally called.  Use the returned value instead. */
	return dest;
}


int _fcpTmpfile(char *filename, int size)
{
	int search = 1;

	struct stat st;
  time_t seedseconds;

	time(&seedseconds);
	srand((unsigned int)seedseconds);

	while (search) {
		snprintf(filename, size - 1, "%s/eztmp_%x", _fcpTmpDir, (unsigned int)rand());

		if (stat(filename, &st) == -1)
			if (errno == ENOENT) search = 0;
	}

	/* One way or another, we have a filename.. attempt to create the file */
	return creat(filename, O_CREAT | S_IRUSR | S_IWUSR);
}

