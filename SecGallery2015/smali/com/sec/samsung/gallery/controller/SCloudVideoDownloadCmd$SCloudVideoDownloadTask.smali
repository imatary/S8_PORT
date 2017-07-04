.class Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;
.super Landroid/os/AsyncTask;
.source "SCloudVideoDownloadCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCloudVideoDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDstPath:Ljava/lang/String;

.field private final mServerId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->mServerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->mDstPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->mServerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->mDstPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->downloadByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    const/4 v0, 0x0

    return-object v0
.end method
