.class Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment$1;
.super Ljava/lang/Object;
.source "DetailsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    const-string/jumbo v1, "DetailsDialog"

    const-string/jumbo v2, "dialog showed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->access$500(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSDCardRemovedIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
