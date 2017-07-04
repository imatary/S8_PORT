.class public Lcom/samsung/android/devicecog/gallery/touchevent/DetailViewStateDCTouchEvent;
.super Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;
.source "DetailViewStateDCTouchEvent.java"


# instance fields
.field mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/DetailViewStateDCTouchEvent;->mIsNeedToCheckComposeView:Z

    return-void
.end method


# virtual methods
.method public checkDCTouchEventEnable(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/touchevent/DetailViewStateDCTouchEvent;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/touchevent/DetailViewStateDCTouchEvent;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v2, v0

    :cond_2
    :goto_1
    return v2

    :sswitch_0
    const-string/jumbo v5, "ScrollUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "ScrollDown"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "ZoomIn"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "ZoomOut"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "SwipeLeft"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "SwipeRight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    move v2, v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/touchevent/DetailViewStateDCTouchEvent;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->getNextBound()I

    move-result v4

    if-gtz v4, :cond_2

    move v2, v3

    goto :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/touchevent/DetailViewStateDCTouchEvent;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPrevBound()I

    move-result v4

    if-ltz v4, :cond_2

    move v2, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6f3d1cde -> :sswitch_5
        -0x601b8f88 -> :sswitch_2
        -0x2ce3b9bf -> :sswitch_4
        -0x141e2998 -> :sswitch_0
        0x5ca9b65b -> :sswitch_3
        0x7abe2d2f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPhotoView(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/DetailViewStateDCTouchEvent;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    return-void
.end method
