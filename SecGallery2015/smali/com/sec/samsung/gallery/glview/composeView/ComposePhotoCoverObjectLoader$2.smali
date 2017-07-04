.class Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;
.super Ljava/lang/Object;
.source "ComposePhotoCoverObjectLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllContentReady()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getBitmapListener()Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;->onAllContentReady()V

    :cond_0
    return-void
.end method

.method public onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$300(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setImageItem(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    return-void
.end method
