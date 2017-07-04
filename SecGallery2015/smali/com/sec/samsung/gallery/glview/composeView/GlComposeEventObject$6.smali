.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$6;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener;
.source "GlComposeEventObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setBitmapToCanvas(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;)V

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

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$6;->futureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$6;->futureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageObject(ILjava/lang/Object;III)V

    :cond_0
    return-void
.end method
