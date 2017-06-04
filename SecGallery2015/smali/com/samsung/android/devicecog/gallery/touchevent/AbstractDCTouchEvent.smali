.class public Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;
.super Ljava/lang/Object;
.source "AbstractDCTouchEvent.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkDCTouchEventEnable(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->checkDCTouchEventEnable(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0512

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p2, v4, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v6, "ScrollToTop"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "ScrollToEnd"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "ScrollUp"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "ScrollDown"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "ZoomIn"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "ZoomOut"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "SwipeLeft"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "SwipeRight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleScrollToTop(Ljava/lang/String;)V

    :goto_2
    invoke-static {v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setAppVisible(Z)V

    invoke-static {p1, p2, v0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCTouchActionNlgIdMap;->getNlgId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p2, v4, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleScrollToBottom(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleScrollUp(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleScrollDown(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleZoomIn(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleZoomOut(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleSwipeRight(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleSwipeLeft(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleSwipeLeft(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->handleSwipeRight(Ljava/lang/String;)V

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

.method public handleScrollDown(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ScrollDown"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleScrollToBottom(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ScrollToEnd"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleScrollToTop(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ScrollToTop"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleScrollUp(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ScrollUp"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleSwipeLeft(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SwipeLeft"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleSwipeRight(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SwipeRight"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleZoomIn(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ZoomIn"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleZoomOut(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ZoomOut"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->handleCommonTouchEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
