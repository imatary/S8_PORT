.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$3;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener;
.source "GlComposeEventObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->requestCacheUpdate(ILcom/sec/android/gallery3d/data/ChannelAlbum;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)Lcom/sec/android/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener",
        "<",
        "Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

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
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    const/4 v1, 0x4

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageObject(ILjava/lang/Object;III)V

    return-void
.end method
