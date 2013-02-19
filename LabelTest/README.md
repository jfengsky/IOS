UILabel 控件
===

###创建uilabel
UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 280, 80)];


###设置背景色
label1.backgroundColor = [UIColor grayColor];

###设置tag
label1.tag = 91;

###设置标签文本
label1.text = @"Hello world!";

###设置标签文本字体和字体大小
label1.font = [UIFont fontWithName:@"Arial" size:30];

###设置文本对其方式
label1.textAlignment = UITextAlignmentCenter;

文本对齐方式有以下三种
<pre>
typedef enum {
    UITextAlignmentLeft = 0,左对齐
    UITextAlignmentCenter,居中对齐
    UITextAlignmentRight, 右对齐                  
} UITextAlignment;
</pre>

###文本颜色
label1.textColor = [UIColor blueColor];

###超出label边界文字的截取方式
label1.lineBreakMode = UILineBreakModeTailTruncation;

截取方式有以下6种
<pre>
typedef enum {		
    UILineBreakModeWordWrap = 0,    以空格为边界，保留整个单词          
    UILineBreakModeCharacterWrap,   保留整个字符          
    UILineBreakModeClip,            到边界为止          
    UILineBreakModeHeadTruncation,  省略开始，以……代替        
    UILineBreakModeTailTruncation,  省略结尾，以……代替       
    UILineBreakModeMiddleTruncation,省略中间，以……代替，多行时作用于最后一行        
} UILineBreakMode;
</pre>

###文本文字自适应大小
label1.adjustsFontSizeToFitWidth = YES;

当adjustsFontSizeToFitWidth=YES时候，如果文本font要缩小时
baselineAdjustment这个值控制文本的基线位置，只有文本行数为1是有效
label1.baselineAdjustment = UIBaselineAdjustmentAlignCenters;

有三种方式
<pre>
typedef enum {
    UIBaselineAdjustmentAlignBaselines = 0, 默认值文本最上端于label中线对齐
    UIBaselineAdjustmentAlignCenters,//文本中线于label中线对齐
    UIBaselineAdjustmentNone,//文本最低端与label中线对齐
} UIBaselineAdjustment;
</pre>

###文本最多行数，为0时没有最大行数限制
label1.numberOfLines = 2;
最小字体，行数为1时有效，默认为0.0
label1.minimumFontSize = 10.0;

###文本高亮
label1.highlighted = YES;

###文本是否可变
label1.enabled = YES;

###去掉label背景色
label1.backgroundColor = [UIColor clearColor];

###文本阴影颜色
label1.shadowColor = [UIColor grayColor];

###阴影大小
label1.shadowOffset = CGSizeMake(1.0, 1.0);

###是否能与用户交互
label1.userInteractionEnabled = YES;

[self.view addSubview:label1];
[label1 release];