.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDecodeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2700(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2700(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateBitmap(Lcom/sec/android/gallery3d/util/Future;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2600(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/android/gallery3d/util/Future;)V

    return-void
.end method
