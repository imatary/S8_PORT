.class public Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "AgifTogglableScrollView.java"


# instance fields
.field private mScrollable:Z

.field private scrollObserver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;

.field private scrollValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->mScrollable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->mScrollable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->mScrollable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollValue:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->destroyDrawingCache()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollObserver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;

    return-void
.end method

.method public getScrolledValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollValue:I

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->mScrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->mScrollable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollValue:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollObserver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;->updateState(Z)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->mScrollable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerScrollObserver(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollObserver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;

    return-void
.end method

.method public scrollToLine(I)V
    .locals 4

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scrollToLineWithoutDelay(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->mScrollable:Z

    return-void
.end method
