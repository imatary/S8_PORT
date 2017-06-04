.class public Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;
.super Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;
.source "ActivityStateDCTouchEvent.java"


# instance fields
.field protected mCurrentLevel:I

.field protected mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field protected mIsNeedToCheckComposeView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mIsNeedToCheckComposeView:Z

    return-void
.end method


# virtual methods
.method public doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const v7, 0x7f0a0512

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mIsNeedToCheckComposeView:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-nez v3, :cond_0

    const-string/jumbo v3, "ActivityStateDCTouch"

    const-string/jumbo v5, "BixbyGallery : doDCTouchEvent() : mGlComposeView is null!!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v7, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p2, v4, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->checkDCTouchEventEnable(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v7, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p2, v4, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "ScrollToTop"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "ScrollToEnd"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "ScrollUp"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "ScrollDown"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "ZoomIn"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "ZoomOut"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "SwipeLeft"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "SwipeRight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleScrollToTop(Ljava/lang/String;)V

    :goto_2
    invoke-static {v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setAppVisible(Z)V

    invoke-static {p1, p2, v0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCTouchActionNlgIdMap;->getNlgId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p2, v4, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleScrollToBottom(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleScrollUp(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleScrollDown(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleZoomIn(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleZoomOut(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleSwipeRight(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleSwipeLeft(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleSwipeLeft(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->handleSwipeRight(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x6f3d1cde -> :sswitch_7
        -0x601b8f88 -> :sswitch_4
        -0x2ce3b9bf -> :sswitch_6
        -0x2217ca8d -> :sswitch_1
        -0x22179213 -> :sswitch_0
        -0x141e2998 -> :sswitch_2
        0x5ca9b65b -> :sswitch_5
        0x7abe2d2f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public handleScrollToBottom(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scrollToBottom()V

    return-void
.end method

.method public handleScrollToTop(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scrollToTop()V

    return-void
.end method

.method public setCurrentLayout(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mCurrentLevel:I

    return-void
.end method

.method public setGlComposeView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-void
.end method
