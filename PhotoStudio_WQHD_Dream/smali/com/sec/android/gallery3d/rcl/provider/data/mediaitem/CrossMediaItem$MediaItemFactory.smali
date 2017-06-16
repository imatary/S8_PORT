.class public Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem$MediaItemFactory;
.super Ljava/lang/Object;
.source "CrossMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaItemFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;III)Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    or-int v1, p1, p2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    if-ne p3, v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->useCloudSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    if-ne p3, v2, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->useCloudSync()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudVideo;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudVideo;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
