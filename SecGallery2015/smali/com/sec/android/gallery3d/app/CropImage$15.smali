.class Lcom/sec/android/gallery3d/app/CropImage$15;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/CropImage;->getLoadBitmapTask()Lcom/sec/android/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$15;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$15;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$1002(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$15;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$2800(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$15;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$2800(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
