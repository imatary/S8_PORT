.class Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;
.super Ljava/lang/Object;
.source "ChangePlayerListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->initDialog()V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$600(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->isScanningWifiDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->stopScanWifiDisplays()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->unregisterReceiver()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$1100(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->onPause()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$500(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$300(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->clearIconCache()V

    return-void
.end method
