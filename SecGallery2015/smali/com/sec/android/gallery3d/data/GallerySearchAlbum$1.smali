.class final Lcom/sec/android/gallery3d/data/GallerySearchAlbum$1;
.super Ljava/lang/Object;
.source "GallerySearchAlbum.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/GallerySearchAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, -0x1

    if-nez p1, :cond_1

    neg-int v2, v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v0

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    check-cast p1, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    check-cast p2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$1;->compare(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v0

    return v0
.end method
