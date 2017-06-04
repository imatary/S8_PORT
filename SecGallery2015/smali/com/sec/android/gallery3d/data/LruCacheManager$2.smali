.class Lcom/sec/android/gallery3d/data/LruCacheManager$2;
.super Landroid/util/SparseArray;
.source "LruCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LruCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/sec/android/gallery3d/data/LruImageCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/LruCacheManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/LruCacheManager;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LruCacheManager$2;->this$0:Lcom/sec/android/gallery3d/data/LruCacheManager;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/LruCacheManager$2;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/LruCacheManager$2;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/LruCacheManager$2;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/LruCacheManager$2;->put(ILjava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/LruCacheManager$2;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/LruCacheManager$2;->put(ILjava/lang/Object;)V

    return-void
.end method
