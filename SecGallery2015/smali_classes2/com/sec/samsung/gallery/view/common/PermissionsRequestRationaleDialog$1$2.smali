.class Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$2;
.super Ljava/lang/Object;
.source "PermissionsRequestRationaleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$2;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$2;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mIsFinishActivity:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$200(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$2;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$100(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$2;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$100(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$2;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->dismissDialog()V

    :cond_1
    return-void
.end method
