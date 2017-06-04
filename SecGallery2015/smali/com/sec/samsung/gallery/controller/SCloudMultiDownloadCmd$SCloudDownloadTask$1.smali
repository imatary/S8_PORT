.class Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask$1;
.super Ljava/lang/Object;
.source "SCloudMultiDownloadCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->showDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask$1;->this$0:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;

    # invokes: Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->hideDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->access$200(Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;)V

    return-void
.end method
