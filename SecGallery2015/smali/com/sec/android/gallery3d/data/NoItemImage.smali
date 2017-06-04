.class public Lcom/sec/android/gallery3d/data/NoItemImage;
.super Lcom/sec/android/gallery3d/data/ActionImage;
.source "NoItemImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoItemImage"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/data/ActionImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getRotation()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/NoItemImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/NoItemImage$BitmapJob;-><init>(Lcom/sec/android/gallery3d/data/NoItemImage;I)V

    return-object v0
.end method
