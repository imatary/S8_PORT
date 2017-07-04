.class public Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;
.super Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;
.source "PhotoViewStateDCTouchEvent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkDCTouchEventEnable(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    move v5, v0

    :cond_1
    return v5

    :sswitch_0
    const-string/jumbo v6, "ScrollToTop"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "ScrollUp"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "ScrollToEnd"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "ScrollDown"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "ZoomIn"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "ZoomOut"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "SwipeLeft"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "SwipeRight"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isAlreadyScrolledTop()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v4

    :goto_2
    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isAlreadyScrolledBottom()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v4

    :goto_3
    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_3

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v1, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_5

    :cond_4
    const/4 v1, 0x3

    :cond_5
    iget v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mCurrentLevel:I

    if-eq v1, v3, :cond_6

    move v0, v4

    :goto_4
    goto/16 :goto_1

    :cond_6
    move v0, v5

    goto :goto_4

    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    iget v6, p0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;->mCurrentLevel:I

    if-eq v3, v6, :cond_7

    move v0, v4

    :goto_5
    goto/16 :goto_1

    :cond_7
    move v0, v5

    goto :goto_5

    :pswitch_4
    const/4 v0, 0x0

    goto/16 :goto_1

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
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
