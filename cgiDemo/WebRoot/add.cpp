#include <stdio.h> 
#include <stdlib.h> 

int main(void) 
{ 
    char *data; 
    long m,n; 
     
     printf("%s","Content-Type:text/html;charset=gb2312\n\n");
    printf("<TITLE>�˷����</TITLE> "); 
    printf("<H3>�˷����</H3> "); 

    data = getenv("QUERY_STRING"); 

    if(data == NULL) 
        printf("<P>��������û�б�����������ݴ���������"); 
    //sscanf ����������ʽ �Թ̶��ĸ�ʽΪ����Դ����scanf�ӱ�׼����������Դ 
    //�ɹ��򷵻ز�����Ŀ 
    else if( sscanf(data,"m=%ld&n=%ld",&m,&n) != 2) 
        printf("<P>�����������ݷǷ�����������ı��������֡�");    
    else 
        printf("<P>%ld * %ld = %ld��<br/>",m,n,m*n); 
    return 0; 
}