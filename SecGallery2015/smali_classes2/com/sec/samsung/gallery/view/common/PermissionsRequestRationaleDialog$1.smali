.class Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;
.super Ljava/lang/Object;
.source "PermissionsRequestRationaleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->showPermissionRationaleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$000(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$1;-><init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$000(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$2;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1$2;-><init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
