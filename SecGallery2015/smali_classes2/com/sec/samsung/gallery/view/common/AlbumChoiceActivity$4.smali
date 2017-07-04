.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;
.super Ljava/lang/Object;
.source "AlbumChoiceActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->startLoadBitmapTask(ILcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;)V
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
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

.field final synthetic val$holder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->val$holder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iput p3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 4
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

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->val$holder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iget v2, v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->position:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->val$position:I

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->val$holder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iput-object v0, v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->handleBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->val$holder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->val$position:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$4;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
