.class Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1$1;
.super Ljava/lang/Object;
.source "ShowShareItemDownloadCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1$1;->this$2:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1$1;->this$2:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "RESTART_CHOOSE_SHARE_DIALOG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
