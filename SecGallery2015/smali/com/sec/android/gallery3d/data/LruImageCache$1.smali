.class Lcom/sec/android/gallery3d/data/LruImageCache$1;
.super Landroid/support/v4/util/LruCache;
.source "LruImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/LruImageCache;->init(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/LruImageCache;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/LruImageCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LruImageCache$1;->this$0:Lcom/sec/android/gallery3d/data/LruImageCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, [B

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/LruImageCache$1;->entryRemoved(ZLjava/lang/String;[B[B)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;[B[B)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/LruImageCache$1;->sizeOf(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;[B)I
    .locals 2

    array-length v1, p2

    div-int/lit16 v0, v1, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
