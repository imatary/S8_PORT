.class Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$4;
.super Ljava/lang/Object;
.source "CommonDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$4;->this$0:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$4;->this$0:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    iget-object v0, v0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->response:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$4;->this$0:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    iget-object v0, v0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->response:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$4;->this$0:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    invoke-interface {v0, v1, p2}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;->itemClicked(Landroid/app/DialogFragment;I)V

    :cond_0
    return-void
.end method
