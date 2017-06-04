.class public Lcom/samsung/android/devicecog/gallery/touchevent/GalleryNotificationStateDCTouchEvent;
.super Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;
.source "GalleryNotificationStateDCTouchEvent.java"


# instance fields
.field private mCurrentTabPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryNotificationStateDCTouchEvent;->mIsNeedToCheckComposeView:Z

    return-void
.end method


# virtual methods
.method public checkDCTouchEventEnable(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v4, "ScrollToTop"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "ScrollUp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "ScrollToEnd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "ScrollDown"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "SwipeLeft"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "SwipeRight"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    iget v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryNotificationStateDCTouchEvent;->mCurrentTabPosition:I

    if-nez v3, :cond_1

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :pswitch_2
    iget v3, p0, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryNotificationStateDCTouchEvent;->mCurrentTabPosition:I

    if-ne v3, v1, :cond_2

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f3d1cde -> :sswitch_5
        -0x2ce3b9bf -> :sswitch_4
        -0x2217ca8d -> :sswitch_2
        -0x22179213 -> :sswitch_0
        -0x141e2998 -> :sswitch_1
        0x7abe2d2f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryNotificationStateDCTouchEvent;->mCurrentTabPosition:I

    return-void
.end method
