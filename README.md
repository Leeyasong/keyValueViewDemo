DZTKeyValueView
=================


[![Pod Version](http://img.shields.io/cocoapods/p/KDCycleBannerView.svg)](http://blog.kingiol.com)
[![License](http://img.shields.io/cocoapods/l/KDCycleBannerView.svg)](http://blog.kingiol.com)


杭州订制通电子商务公司开源的keyValueView[(球来啦)](http://www.qiulaila.com)

![ScreenShoot](https://github.com/zhoujie903/keyValueViewDemo/raw/master/Screen%20Shot.png)

## Usage
把文件夹DZTKeyValueView拖入自己的项目就可以了

注：需要运行pod install才能运行项目,项目依赖于Masonry

故事板storyboard：设置为DZTKeyValueView

``` objc
	DZTKeyValueView *tag2 = [DZTKeyValueView new];
	tag2.key = @"总课时";
    tag2.value = [NSString stringWithFormat:@"10课时"];
    tag2.valueColor = [UIColor colorWithRed:0.843 green:0.717 blue:0.474 alpha:1];
```

For more infomation, please check the demo project, Good Luck!


## Inspiration

GitHub上开源项目介绍常有：[![Pod Version](http://img.shields.io/cocoapods/p/KDCycleBannerView.svg)](http://blog.kingiol.com)

## License

MIT LICENSE

Copyright (C)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.