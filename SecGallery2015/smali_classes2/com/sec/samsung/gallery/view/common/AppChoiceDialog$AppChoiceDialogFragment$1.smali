.class Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$1;
.super Ljava/lang/Object;
.source "AppChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$1;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->access$800(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    # invokes: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->resizeDialog(I)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->access$900(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;I)V

    return-void
.end method
