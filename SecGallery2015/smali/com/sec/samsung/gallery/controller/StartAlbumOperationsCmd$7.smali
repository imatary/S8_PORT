.class Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;
.super Ljava/lang/Object;
.source "StartAlbumOperationsCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

.field final synthetic val$bProgressPercentAsCount:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$count:I

.field final synthetic val$dstFoldername:Ljava/lang/String;

.field final synthetic val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/content/Context;IILjava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$count:I

    iput p4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$operationId:I

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$dstFoldername:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$bProgressPercentAsCount:Z

    iput-object p7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getTotalSize()J

    move-result-wide v10

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentSize()J

    move-result-wide v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentCount()I

    move-result v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->hide()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$602(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setNeedInitCurrentStatus(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentSize(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$count:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentCount(I)V

    iget v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$operationId:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0285

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$dstFoldername:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$bProgressPercentAsCount:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->show()V

    :cond_0
    const-string/jumbo v0, "StartAlbumOperationsCmd"

    const-string/jumbo v1, "onDismiss : progress dialog is dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$operationId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$context:Landroid/content/Context;

    const v2, 0x7f0a0360

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a00c6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$dstFoldername:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$bProgressPercentAsCount:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method
