#include <stdio.h> 
#include <stdlib.h> 

int main(void) 
{ 
    char *data; 
    long m,n; 
     
     printf("%s","Content-Type:text/html;charset=gb2312\n\n");
    printf("<TITLE>乘法结果</TITLE> "); 
    printf("<H3>乘法结果</H3> "); 

    data = getenv("QUERY_STRING"); 

    if(data == NULL) 
        printf("<P>错误！数据没有被输入或者数据传输有问题"); 
    //sscanf 类似正则表达式 以固定的格式为输入源，而scanf从标准输入获得输入源 
    //成功则返回参数数目 
    else if( sscanf(data,"m=%ld&n=%ld",&m,&n) != 2) 
        printf("<P>错误！输入数据非法。表单中输入的必须是数字。");    
    else 
        printf("<P>%ld * %ld = %ld。<br/>",m,n,m*n); 
    return 0; 
}