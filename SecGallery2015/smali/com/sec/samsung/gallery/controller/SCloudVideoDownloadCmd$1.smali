.class Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;
.super Ljava/lang/Object;
.source "SCloudVideoDownloadCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

.field final synthetic val$event:Lcom/sec/samsung/gallery/core/Event;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;Lcom/sec/samsung/gallery/core/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;->val$event:Lcom/sec/samsung/gallery/core/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;->val$event:Lcom/sec/samsung/gallery/core/Event;

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/core/Event;)V

    # setter for: Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->access$002(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->access$000(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;)Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->access$000(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;)Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->showDialog()V

    return-void
.end method
