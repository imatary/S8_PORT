.class Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "3011"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog;->hideSoftInput(Landroid/os/IBinder;)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$000(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/os/IBinder;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mNeedExitSelectionMode:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1500(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "1242"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
