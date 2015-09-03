#为UITextView加上placeholder属性，使用方法简单.
	/**
     textview
     */
    BBTextView * textView = [[BBTextView alloc]initWithFrame:CGRectMake(10, 100, 300, 300)];
    textView.backgroundColor = [UIColor orangeColor];
    textView.font = [UIFont systemFontOfSize:25];
    textView.placeColor = [UIColor lightGrayColor];
    textView.placeholder = @"This is placeholder!";
    [self.view addSubview:textView];
    
    /**
     textfield
     */
    UITextField * field = [[UITextField alloc]initWithFrame:CGRectMake(10, 420, 300, 44)];
    field.backgroundColor = [UIColor brownColor];
    field.placeholder = @"This is placeholder!";
    [self.view addSubview:field];
