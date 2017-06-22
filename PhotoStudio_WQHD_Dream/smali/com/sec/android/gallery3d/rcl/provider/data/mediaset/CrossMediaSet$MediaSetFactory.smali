.class public Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet$MediaSetFactory;
.super Ljava/lang/Object;
.source "CrossMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaSetFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p2, 0x10

    if-lez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->useCloudKeyInCMH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->useCloudSync()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/LocalMediaSet;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/LocalMediaSet;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getTotalItemCount(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p2, 0x10

    if-lez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->useCloudKeyInCMH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->useCloudSync()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    invoke-static {p0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->getTotalItemCount(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/LocalMediaSet;->getTotalItemCount(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method
