.class Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;
.super Landroid/widget/ScrollView;
.source "SpenPenScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;
    }
.end annotation


# instance fields
.field private mScrollable:Z

.field private onScrollChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->mScrollable:Z

    return-void
.end method


# virtual methods
.method public computeVerticalScrollRange()I
    .locals 1

    invoke-super {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->mScrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->mScrollable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->onScrollChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->onScrollChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;->scrollChanged(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->mScrollable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->mScrollable:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnScrollChangedListener(Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->onScrollChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView$scrollChangedListener;

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenScrollView;->mScrollable:Z

    return-void
.end method
