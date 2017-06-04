.class Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;
.super Ljava/lang/Object;
.source "CreateAlbumDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$2;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$2;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
