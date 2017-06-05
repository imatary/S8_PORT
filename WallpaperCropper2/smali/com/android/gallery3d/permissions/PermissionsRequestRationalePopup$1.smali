.class Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$1;
.super Ljava/lang/Object;
.source "PermissionsRequestRationalePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->showPermissionRationaleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$1;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$1;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;

    invoke-static {v2}, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->-get0(Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$1;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;

    invoke-static {v1}, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->-get0(Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$1;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;

    invoke-virtual {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->dismissDialog()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PermissionsRequestPopup"

    const-string/jumbo v2, "Activity not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
