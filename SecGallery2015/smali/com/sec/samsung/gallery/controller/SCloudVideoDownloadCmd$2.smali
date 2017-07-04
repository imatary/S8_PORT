.class Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$2;
.super Ljava/lang/Object;
.source "SCloudVideoDownloadCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->access$000(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;)Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->dismissDialog()V

    return-void
.end method
