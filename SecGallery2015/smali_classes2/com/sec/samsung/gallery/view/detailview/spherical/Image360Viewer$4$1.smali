.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$500(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$400(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->getSaveStatus(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_SUCCESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    const v2, 0x7f0a01da

    # invokes: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showToast(I)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$600(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;I)V

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_DEVICE_COG:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v1, "360PhotoViewer"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "360Viewer"

    const-string/jumbo v2, "Available"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "CaptureImage"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    const/4 v2, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsCaptureInProgress:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$802(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z

    return-void

    :cond_1
    const-string/jumbo v1, "Image360Viewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen capture failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$400(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    const v2, 0x7f0a01d9

    # invokes: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showToast(I)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$600(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;I)V

    goto :goto_0
.end method
