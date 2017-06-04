.class Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;
.super Ljava/lang/Object;
.source "ShowShareItemDownloadCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getOriginalFileSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getCMHFileId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mChannelId:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mUgci:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mDownloadListner:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    move-result-object v7

    # invokes: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->startContentDownload(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;)V
    invoke-static/range {v0 .. v7}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;)V

    return-void
.end method
