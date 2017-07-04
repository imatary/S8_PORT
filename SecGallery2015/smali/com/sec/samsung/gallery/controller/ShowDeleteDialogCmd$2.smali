.class Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;
.super Ljava/lang/Object;
.source "ShowDeleteDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->handleDeleteMedias()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

.field final synthetic val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 10

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->hide()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getTotalSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentSize()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentCount()I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$800(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    new-instance v7, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$702(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentSize(J)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentCount(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v6, v1, v7, v8, v9}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->show()V

    :cond_0
    const-string/jumbo v6, "ShowDeleteDialogCmd"

    const-string/jumbo v7, "onDismiss : progress dialog is dismissed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
