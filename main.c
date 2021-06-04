/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kdrissi- <kdrissi-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/01 17:41:47 by kdrissi-          #+#    #+#             */
/*   Updated: 2021/06/04 14:00:28 by kdrissi-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
     #include <sys/errno.h>
typedef  struct s_list
{
    void *content;
    struct s_list *next;
}               t_list;

extern size_t ft_strlen(char *h);
extern char *ft_strdup( const char  *f);
extern int ft_strcmp( char  *f,   char  *s);
extern char * ft_strcpy( char  *f,   char  *s);
extern  int  ft_write(int fildes, const void *buf, size_t nbyte);
extern   int ft_read(int fildes, void *buf, size_t nbyte);
extern  int		ft_list_size(t_list *begin_list);
extern  void		ft_list_remove_if(t_list **begin_list, void *data_ref, int (*cmp)(), void (*free_fct)(void*));
extern  void		ft_list_push_front(t_list **begin_list, void *data);


int main()
{
    char  *str1 = "bbbbbbbbbbbb3";
    char  *str2 = "bbbbbbbbbbbb*";




    // //   strlen test:
    // printf("ft_strlen : %lu || strlen : %lu\n", ft_strlen("123456789"),  strlen("123456789"));
    // printf("ft_strlen : %lu || strlen : %lu\n", ft_strlen(""),  strlen(""));
    // printf("ft_strlen : %lu || strlen : %lu\n", ft_strlen("1"),  strlen("1"));
    // printf("ft_strlen : %lu || strlen : %lu\n", ft_strlen("\0"),  strlen("\0"));
    // printf("ft_strlen : %lu || strlen : %lu\n", ft_strlen("hello world"),  strlen("hello world"));



    // printf("----------------------------------------------------------------------------\n");

    
    // //   strcmp test:
    //     printf("ft_strcmp : %d || strcmp : %d\n", ft_strcmp("123456789","123456789" ),  strcmp("123456789", "123456789"));
    //     printf("ft_strcmp : %d || strcmp : %d\n", ft_strcmp("","" ),  strcmp("", ""));
    //     printf("ft_strcmp : %d || strcmp : %d\n", ft_strcmp("a","b" ),  strcmp("a", "b"));
    //     printf("ft_strcmp : %d || strcmp : %d\n", ft_strcmp("b","a" ),  strcmp("b", "a"));
    //     printf("ft_strcmp : %d || strcmp : %d\n", ft_strcmp(str1, str2),  strcmp(str1, str2));



    //     printf("----------------------------------------------------------------------------\n");

    
    //     // strcpy test:
    // char *tocpy = malloc(500);
    // char *tocpyTest = malloc(500);
    
    // char *retcpy = ft_strcpy(tocpy,"a" );
    // char *retcpyTest = strcpy(tocpyTest,"a" );
    // printf("ft_strcmp :  %p   %p [%s]  || strcmp :  %p %p [%s] \n",  retcpy, tocpy , tocpy, retcpyTest, tocpyTest, tocpyTest);

    // retcpy = ft_strcpy(tocpy,"" );
    // retcpyTest = strcpy(tocpyTest,"" );
    // printf("ft_strcmp :  %p   %p [%s]  || strcmp :  %p %p [%s] \n",  retcpy, tocpy , tocpy, retcpyTest, tocpyTest, tocpyTest);

    // retcpy = ft_strcpy(tocpy,"4444444444444444" );
    // retcpyTest = strcpy(tocpyTest,"4444444444444444" );
    // printf("ft_strcmp :  %p   %p [%s]  || strcmp :  %p %p [%s] \n",  retcpy, tocpy , tocpy, retcpyTest, tocpyTest, tocpyTest);

    // retcpy = ft_strcpy(tocpy,"123456789" );
    // retcpyTest = strcpy(tocpyTest,"123456789" );
    // printf("ft_strcmp :  %p   %p [%s]  || strcmp :  %p %p [%s] \n",  retcpy, tocpy , tocpy, retcpyTest, tocpyTest, tocpyTest);

    // retcpy = ft_strcpy(tocpy,"\0" );
    // retcpyTest = strcpy(tocpyTest,"\0" );
    // printf("ft_strcmp :  %p   %p [%s]  || strcmp :  %p %p [%s] \n",  retcpy, tocpy , tocpy, retcpyTest, tocpyTest, tocpyTest);



    //printf("----------------------------------------------------------------------------\n");



    // // strdup


    // char *strdup1;
    // char *strdupTest;
    // strdup1 = ft_strdup("1337");
    // strdupTest = strdup("1337");

    // printf("ft_strdup [%s]  ||  strdup [%s]\n", strdup1, strdupTest);
    // free(strdup1);
    // free(strdupTest);


    // strdup1 = ft_strdup("");
    // strdupTest = strdup("");

    // printf("ft_strdup [%s]  ||  strdup [%s]\n", strdup1, strdupTest);
    // free(strdup1);
    // free(strdupTest);



    // strdup1 = ft_strdup("123456789");
    // strdupTest = strdup("123456789");

    // printf("ft_strdup [%s] ||  strdup [%s]\n", strdup1, strdupTest);
    // free(strdup1);
    // free(strdupTest);
    
    //printf("----------------------------------------------------------------------------\n");


    // // ft_write 
    
    // errno = 0;
    // ft_write(1, "123", 3);
    // ft_write(1, "hello world\n", 12 ); 
    // perror("test");
    
    // write(1, "hello world\n", 12 );
    // perror("test");
    
    // errno = 0;
    // ft_write(-1, "hello world\n", 12 ); 
    // perror("test");
    // errno = 0;
    // ft_write(-1, "hello world\n", 12 );
    // perror("test");

    // errno = 0;



    

    //printf("----------------------------------------------------------------------------\n");


    // // ft_read




    // int fd = open("main.c",O_RDWR );
    // char *strtest = malloc(500);
    // int bytes = ft_read(fd, strtest , 200);
    // strtest[bytes] = '\0';

    // printf("ft_read [%s]  error =  %s  \n", strtest, strerror(errno));
    // close(fd);
    // bzero(strtest, bytes);





    // fd = open("1337",O_RDWR );
    // bytes = ft_read(fd, strtest , 200);
    // strtest[bytes] = '\0';
    // printf("ft_read [%s]  error =  %s  \n", strtest, strerror(errno));
    // close(fd);

    //printf("----------------------------------------------------------------------------\n");

    // // ft_list_push_front:
    
        // t_list *list =  malloc(sizeof(t_list));;
        // t_list *list1 = malloc(sizeof(t_list));
        // t_list *list2 = malloc(sizeof(t_list));
        // list->next = list1;
        // list1->next = list2;
        // list2->next = NULL;
        


        // int size = ft_list_size(list);
        // printf("ft_list_size %d: ", size);

        // ft_list_push_front(&list, "ddssadp");
        // printf("%s\n" ,(char *)list->content);
    

    return 0;
}