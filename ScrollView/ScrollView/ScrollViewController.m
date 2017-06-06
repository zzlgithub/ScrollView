//
//  ScrollViewController.m
//  ScrollView
//
//  Created by zhangzhenglong on 2017/6/5.
//  Copyright © 2017年 zhangzhenglong. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong)UIScrollView * scrollView;

@end

@implementation ScrollViewController

- (UIScrollView *)scrollView{
    if (nil == _scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0,K_ScreenWidth,K_ScreenHeight)];
        _scrollView.backgroundColor = [UIColor greenColor];
        _scrollView.contentSize = CGSizeMake(K_ScreenWidth, K_ScreenHeight * 1.5);
        _scrollView.delegate = self;
    }
    return _scrollView;
}

#pragma mark   --------生命周期-------
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"scrollView的使用";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.scrollView];
}


#pragma mark   ---UIScrollViewDelegate------

/**
 *  这个方法在任何方式触发 contentOffset 变化的时候都会被调用（包括用户拖动，减速过程，直接通过代码设置等），可以用于监控 contentOffset 的变化，并根据当前的 contentOffset 对其他 view 做出随动调整
 *
 *  @param scrollView <#scrollView description#>
 */
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}

/**
 *  用户开始拖动 scroll view 的时候被调用
 *
 *  @param scrollView <#scrollView description#>
 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
}


/**
 *  该方法从 iOS 5 引入，在 didEndDragging 前被调用，当 willEndDragging 方法中 velocity 为 CGPointZero（结束拖动时两个方向都没有速度）时，didEndDragging 中的 decelerate 为 NO，即没有减速过程，willBeginDecelerating 和 didEndDecelerating 也就不会被调用。反之，当 velocity 不为 CGPointZero 时，scroll view 会以 velocity 为初速度，减速直到 targetContentOffset。值得注意的是，这里的 targetContentOffset 是个指针，没错，你可以改变减速运动的目的地，这在一些效果的实现时十分有用，实例章节中会具体提到它的用法，并和其他实现方式作比较。
 *
 */
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    
    
    
}

/**
 *  在用户结束拖动后被调用，decelerate 为 YES 时，结束拖动后会有减速过程。注，在 didEndDragging 之后，如果有减速过程，scroll view 的 dragging 并不会立即置为 NO，而是要等到减速结束之后，所以这个 dragging 属性的实际语义更接近 scrolling。
 */
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
}


/**
 *  减速动画开始前被调用。
 */
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    
}


/**
 *  减速动画结束时被调用，这里有一种特殊情况：当一次减速动画尚未结束的时候再次 drag scroll view，didEndDecelerating 不会被调用，并且这时 scroll view 的 dragging 和 decelerating 属性都是 YES。新的 dragging 如果有加速度，那么 willBeginDecelerating 会再一次被调用，然后才是 didEndDecelerating；如果没有加速度，虽然 willBeginDecelerating 不会被调用，但前一次留下的 didEndDecelerating 会被调用，所以连续快速滚动一个 scroll view 时，delegate 方法被调用的顺序（不含 didScroll）可能是这样的：
 */
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
}



#pragma mark  -----  滚动到顶部  / 缩放  ---------

//是否支持滑动至顶部
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView{
    return YES;
}

//called when scrolling animation finished. may be called immediately if already at top 滑动到顶部时调用该方法
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView{
    
}


// called when setContentOffset/scrollRectVisible:animated: finishes. not called if not animating
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    
}

// return a view that will be scaled. if delegate returns nil, nothing happens
- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return nil;
}

// called before the scroll view begins zooming its content
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view{
    
}

// scale between minimum and maximum. called after any 'bounce' animations

- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale{
}


// any zoom scale changes
- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
