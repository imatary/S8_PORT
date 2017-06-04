.class public Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;
.super Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;
.source "VisualSearchViewStateDCTouchEvent.java"


# instance fields
.field private mCurrentVisualSearchStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkDCTouchEventEnable(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v5, "ScrollToTop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "ScrollUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "ScrollToEnd"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "ScrollDown"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "ZoomIn"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "ZoomOut"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v5, "SwipeLeft"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v5, "SwipeRight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :pswitch_0
    iget v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mCurrentVisualSearchStatus:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isAlreadyScrolledTop()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mCurrentVisualSearchStatus:I

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    iget v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mCurrentVisualSearchStatus:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isAlreadyScrolledBottom()Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    :goto_3
    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mCurrentVisualSearchStatus:I

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f3d1cde -> :sswitch_7
        -0x601b8f88 -> :sswitch_4
        -0x2ce3b9bf -> :sswitch_6
        -0x2217ca8d -> :sswitch_2
        -0x22179213 -> :sswitch_0
        -0x141e2998 -> :sswitch_1
        0x5ca9b65b -> :sswitch_5
        0x7abe2d2f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public handleScrollToBottom(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mCurrentVisualSearchStatus:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scrollToBottom()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ScrollToEnd"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleScrollToTop(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mCurrentVisualSearchStatus:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scrollToTop()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ScrollToTop"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrentVisualSearchStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->mCurrentVisualSearchStatus:I

    return-void
.end method
