.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;
.super Ljava/lang/Object;
.source "PhotoViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->selectAllProcessTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCompleted(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$4500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->isAvailableCount(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$4600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$4700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$4800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$4900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$5100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$5000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method
