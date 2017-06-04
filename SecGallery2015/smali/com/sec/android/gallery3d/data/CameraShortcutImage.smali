.class public Lcom/sec/android/gallery3d/data/CameraShortcutImage;
.super Lcom/sec/android/gallery3d/data/ActionImage;
.source "CameraShortcutImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraShortcutImage"


# instance fields
.field private mIsNeedToUpdateImage:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f020278

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/data/ActionImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getSupportedOperations()J
    .locals 4

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/ActionImage;->getSupportedOperations()J

    move-result-wide v0

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedToUpdateImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/CameraShortcutImage;->mIsNeedToUpdateImage:Z

    return v0
.end method

.method public setNeedToUpdateImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/CameraShortcutImage;->mIsNeedToUpdateImage:Z

    return-void
.end method
