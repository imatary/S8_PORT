.class Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$2;
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

    iput-object p1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$2;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$2;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-get3(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$2;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-get1(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
