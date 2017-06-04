.class public Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;
.super Lcom/sec/android/gallery3d/app/Config$PhotoPage;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BurstShotPhotoPage"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/app/Config$PhotoPage;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/Config$1;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;->filmstripThumbSize:I

    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;->filmstripContentSize:I

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;->sInstance:Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;->sInstance:Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;->sInstance:Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
