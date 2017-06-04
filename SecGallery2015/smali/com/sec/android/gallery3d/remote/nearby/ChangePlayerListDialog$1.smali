.class Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;
.super Landroid/os/Handler;
.source "ChangePlayerListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-wide/16 v4, 0x2710

    const/4 v3, 0x4

    const/4 v2, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "ChangePlayerListDialog"

    const-string/jumbo v1, "mScanWifiDisplayHandler : SCAN_WIFI_DISPLAY_START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->isScanningWifiDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ChangePlayerListDialog"

    const-string/jumbo v1, "mScanWifiDisplayHandler : Scan has been already working"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$100(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanWifiDisplayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanWifiDisplayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->scanWifiDisplays()V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "ChangePlayerListDialog"

    const-string/jumbo v1, "mScanWifiDisplayHandler : SCAN_WIFI_DISPLAY_FINISH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->isScanningWifiDisplay()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->isP2pConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ChangePlayerListDialog"

    const-string/jumbo v1, "mScanWifiDisplayHandler : stopScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanWifiDisplayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanWifiDisplayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "ChangePlayerListDialog"

    const-string/jumbo v1, "mScanWifiDisplayHandler : stopScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->stopScanWifiDisplays()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$100(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$100(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string/jumbo v0, "ChangePlayerListDialog"

    const-string/jumbo v1, "mScanWifiDisplayHandler : Scan is not working"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
