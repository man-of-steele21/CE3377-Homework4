// Exercise4.4
// myprog2.c
// Jackson Steele

#include <stdio.h>
 
int main(void)
{
  mkdir("dir1", 0700);
  creat("dir1/file10", 0600);

  mkdir("dir2", 0700);
  creat("dir2/file20", 0600);

  creat("file1", 0600);

  symlink("dir2/file20", "link1");
  return 0;
}
