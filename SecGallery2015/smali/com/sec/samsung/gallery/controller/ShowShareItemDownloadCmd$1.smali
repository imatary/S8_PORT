.class Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;
.super Ljava/lang/Object;
.source "ShowShareItemDownloadCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->prepareDownload(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

.field final synthetic val$sdkCancelListern:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;->val$sdkCancelListern:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mUgci:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mUgci:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareId:J
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;->val$sdkCancelListern:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->cancel(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
