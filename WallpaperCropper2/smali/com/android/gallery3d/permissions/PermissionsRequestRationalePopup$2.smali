.class Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$2;
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

    iput-object p1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$2;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$2;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;

    invoke-static {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->-get1(Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup$2;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;

    invoke-static {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;->-get0(Lcom/android/gallery3d/permissions/PermissionsRequestRationalePopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
