.class Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;
.super Ljava/lang/Object;
.source "ChangePlayerListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$600(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->onResume()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->registerReceiver()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$700(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$800(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$700(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method