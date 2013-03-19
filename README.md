IOS
===

2013-03-19
***
####while循环
<pre>
int i = 0;
while (i < 10) {
	NSLog(@"i:%d",i);
	i++;
}
// 0 1 2 3 4 5 6 7 8 9
</pre>
这个等同于
<pre>
for(int i = 0;i < 10; i++){
	NSLog(@"i:%d", i);
}
</pre>

####do~while循环
<pre>
int i = 0;
 do{
     i++;
     NSLog(@"i:%d", i);
 }while (i < 10);
 // 1 2 3 4 5 6 7 8 9 10
</pre>

####break语句
<pre>
int i = 0, j = 0;
while (j <= 100) {
    if (j % 4 == 0) {
        NSLog(@"j=%d", j);
        i++;
    }
    if (i == 5){
        break;	// 跳出循环
    }
    j++;
}
// 0 4 8 12 16
</pre>

####continue 终止当前执行
<pre>
while (j <= 100) {
    if (j % 4 == 0) {
        NSLog(@"j=%d", j);
        i++;
    }
    if (i == 5){
        continue;
    }
    j++;
}
</pre>