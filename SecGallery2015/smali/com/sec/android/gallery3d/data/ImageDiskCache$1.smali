.class final Lcom/sec/android/gallery3d/data/ImageDiskCache$1;
.super Landroid/util/SparseArray;
.source "ImageDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/ImageDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2a745fba03e27423L


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x2

    const-string/jumbo v1, "micro"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/ImageDiskCache$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    const-string/jumbo v1, "mini"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/ImageDiskCache$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    const-string/jumbo v1, "nano"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/ImageDiskCache$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    const-string/jumbo v1, "attributecache"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/ImageDiskCache$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    const-string/jumbo v1, "imgcache"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/ImageDiskCache$1;->put(ILjava/lang/Object;)V

    return-void
.end method
