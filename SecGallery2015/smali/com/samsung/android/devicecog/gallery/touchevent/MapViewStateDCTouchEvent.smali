.class public Lcom/samsung/android/devicecog/gallery/touchevent/MapViewStateDCTouchEvent;
.super Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;
.source "MapViewStateDCTouchEvent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/MapViewStateDCTouchEvent;->mIsNeedToCheckComposeView:Z

    return-void
.end method


# virtual methods
.method public checkDCTouchEventEnable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const-string/jumbo v1, "ScrollUp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "ScrollDown"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "ZoomIn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "ZoomOut"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "SwipeLeft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "SwipeRight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f3d1cde -> :sswitch_5
        -0x601b8f88 -> :sswitch_2
        -0x2ce3b9bf -> :sswitch_4
        -0x141e2998 -> :sswitch_0
        0x5ca9b65b -> :sswitch_3
        0x7abe2d2f -> :sswitch_1
    .end sparse-switch
.end method
