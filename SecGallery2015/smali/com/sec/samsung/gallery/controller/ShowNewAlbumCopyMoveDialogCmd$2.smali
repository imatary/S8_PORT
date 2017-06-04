.class Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;
.super Ljava/lang/Object;
.source "ShowNewAlbumCopyMoveDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->handleSelectedOperation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

.field final synthetic val$fDstFolderName:Ljava/lang/String;

.field final synthetic val$mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field final synthetic val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->val$mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->val$fDstFolderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->hide()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getTotalSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentSize()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentCount()I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    new-instance v7, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$302(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setNeedInitCurrentStatus(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentSize(J)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->val$mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentCount(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v6

    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0285

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->val$fDstFolderName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->val$onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v6, v1, v7, v10, v8}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->show()V

    :cond_0
    const-string/jumbo v6, "ShowAlbumCopyMoveDialog"

    const-string/jumbo v7, "onDismiss : progress dialog is dismissed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v6

    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a00c6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->val$fDstFolderName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a02b8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
