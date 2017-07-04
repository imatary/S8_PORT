.class Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;
.super Ljava/lang/Object;
.source "ShowShareItemDownloadCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->prepareDownload(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->val$count:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ShowShareItmDwnloadCmd"

    const-string/jumbo v2, "restore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->val$count:I

    invoke-static {v2, v0, v3}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->restoreDialog(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Landroid/app/Activity;I)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$302(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0138

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->show()V

    :cond_0
    return-void
.end method
