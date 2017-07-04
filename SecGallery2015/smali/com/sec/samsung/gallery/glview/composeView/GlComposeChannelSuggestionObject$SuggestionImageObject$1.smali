.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;
.super Ljava/lang/Object;
.source "GlComposeChannelSuggestionObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->resetLayout()V
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
.field final synthetic this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

.field final synthetic val$obj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;->val$obj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

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

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;->val$obj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;->imageObjectRef:Ljava/lang/ref/WeakReference;

    iput-object v6, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    const/16 v1, 0x10

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageObject(ILjava/lang/Object;III)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->access$3800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;)Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/ThreadPool;->getQueuedCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;->onAllContentReady()V

    :cond_1
    return-void
.end method
