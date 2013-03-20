IOS
===

2013-03-19
***
####while循环

	int i = 0;
	while (i < 10) {
		NSLog(@"i:%d",i);
		i++;
	}
	// 0 1 2 3 4 5 6 7 8 9

这个等同于

	for(int i = 0;i < 10; i++){
		NSLog(@"i:%d", i);
	}


####do~while循环

	int i = 0;
 	do{
     	i++;
     	NSLog(@"i:%d", i);
 	}while (i < 10);
 	// 1 2 3 4 5 6 7 8 9 10


####break语句

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


####continue 终止当前执行

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


2013-03-19
***
#### 类的声明和实现
类的声明:(放在.h文件中)

	@interface NewClassName:ParentClassName
	{
		// 实例变量…
		变量类型 变量名称
	}
	//方法的声明…

方法的实现:(放在.m文件中)

	@implementation NewClassName
	{
	// code… 
	}
	@end
	
例如:

	@interface Person:NSObject
	{
		int age;
		char name;
	}
	-(id) initWithAge:(int)_age name:(char)_name;
	-(int) getage;
	-(char) getname;
	-(void）setAge:(int) _age;
	// 方法类型 (返回类型) 方法名:(参数类型) 参数名
	// + 表示类方法
	// - 表示实例方法
	@end
	
#### 方法的调用
[类名或对象名 方法名];
如:

	[ClassOrInstance method];
	[ClassOrInstance method:arg1];
	[ClassOrInstance method1:arg1 method2:arg2];
	[[ClassOrinstance method] othermethod];


对象名.方法名 （点语法）