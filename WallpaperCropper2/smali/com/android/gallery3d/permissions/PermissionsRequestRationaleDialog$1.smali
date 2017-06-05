.class Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$1;
.super Ljava/lang/Object;
.source "PermissionsRequestRationaleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->showPermissionRationaleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$1;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$1;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v1}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-get1(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Cropper2_PermissionsDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$1;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v1}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-get1(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$1;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->dismissDialog()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_PermissionsDialog"

    const-string/jumbo v2, "Activity not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
