.class Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;
.super Ljava/lang/Object;
.source "ChangePlayerListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$800(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$900(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->isConnectedPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$900(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->disconnectWithPlayDevice()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$600(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->registerReceiver()V

    const-string/jumbo v0, "ChangePlayerListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isP2pWorking : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->isP2pWorking()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->isP2pWorking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanWifiDisplayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # invokes: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->refreshListAdapter()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$1000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V

    return-void
.end method
