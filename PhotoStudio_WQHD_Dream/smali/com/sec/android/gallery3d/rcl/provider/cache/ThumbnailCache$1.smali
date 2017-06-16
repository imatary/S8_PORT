.class Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache$1;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

.field final synthetic val$oldBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    iput-object p2, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache$1;->val$oldBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache$1;->val$oldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache$1;->val$oldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache$1;->val$oldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
