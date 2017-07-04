.class Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$1;
.super Ljava/lang/Object;
.source "PermissionsRequestRationalePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->showPermissionRationaleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->access$000(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->access$000(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->dismissDialog()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PerReqRationalePopup"

    const-string/jumbo v3, "Activity not found"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
