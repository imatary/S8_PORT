.class Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;
.super Ljava/lang/Object;
.source "DetailsDialogForCamera.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->showDialog()V
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
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;

    invoke-static {v5, v0}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->access$100(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_2
    move-object v4, v0

    move-object v1, v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1$1;

    invoke-direct {v6, p0, v4, v1}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1$1;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->access$000(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
