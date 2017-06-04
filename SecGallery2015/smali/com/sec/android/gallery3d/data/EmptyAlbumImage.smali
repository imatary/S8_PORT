.class public Lcom/sec/android/gallery3d/data/EmptyAlbumImage;
.super Lcom/sec/android/gallery3d/data/ActionImage;
.source "EmptyAlbumImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmptyAlbumImage"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020279

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/ActionImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getSupportedOperations()J
    .locals 4

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/ActionImage;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    return-wide v0
.end method
