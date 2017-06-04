.class Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$1;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$1;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$1;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$100(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$1;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$100(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$1;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$100(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$1;->this$1:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->dismissDialog()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PermissionsReqDialog"

    const-string/jumbo v3, "Activity not found"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
