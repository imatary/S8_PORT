.class Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;
.super Landroid/app/DialogFragment;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/DetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDetailDialogFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->access$300(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;)V

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->access$202(Lcom/sec/samsung/gallery/view/common/DetailsDialog;Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;)Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->onCreateDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment$1;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$MediaDetailDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->onDialogDismiss()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
