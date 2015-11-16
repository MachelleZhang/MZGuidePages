# MZGuidePages
通用导航页<br>
使用方法：<br>
1.将MZGuidePages引入工程，并import<br>
2.在适当地地方初始化即可<br>
```objective-c
数据源
NSArray *imageArray = @[ @"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg" ];

初始化方法1
MZGuidePages *mzgpc = [[MZGuidePages alloc] init];
mzgpc.imageDatas = imageArray;
mzgpc.buttonAction = ^{
  do something!
};

初始化方法2
MZGuidePagesController *mzgpc = [[MZGuidePagesController alloc]
                                        initWithImageDatas:imageArray
                                                completion:^{
                                                    do something!
                                                }];
