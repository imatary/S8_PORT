.class public Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
.super Landroid/app/DialogFragment;
.source "CommonDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;
    }
.end annotation


# instance fields
.field adapter:Landroid/widget/ListAdapter;

.field arrayResItems:I

.field context:Landroid/content/Context;

.field customLayoutId:I

.field customView:Landroid/view/View;

.field itemIndex:I

.field items:[Ljava/lang/CharSequence;

.field message:I

.field negative:I

.field neutral:I

.field positive:I

.field response:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;

.field singleChoiceItems:[Ljava/lang/String;

.field title:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->title:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->message:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->customLayoutId:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->positive:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->negative:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->neutral:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->arrayResItems:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->title:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->message:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->customLayoutId:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->positive:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->negative:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->neutral:I

    iput v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->arrayResItems:I

    iput-object p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->customView:Landroid/view/View;

    return-object v0
.end method

.method inflateCustomView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->context:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->customLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->customView:Landroid/view/View;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->response:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->response:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;

    invoke-interface {v0, p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;->onCancel(Landroid/app/DialogFragment;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->title:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->message:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->message:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    iget-object v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->customView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->customView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_2
    iget-object v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->singleChoiceItems:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->singleChoiceItems:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->itemIndex:I

    new-instance v4, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$1;-><init>(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    iget-object v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->adapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->adapter:Landroid/widget/ListAdapter;

    new-instance v3, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$2;-><init>(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    iget-object v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->items:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->items:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$3;-><init>(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    :goto_0
    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->positive:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->positive:I

    new-instance v3, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$5;

    invoke-direct {v3, p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$5;-><init>(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_6
    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->neutral:I

    if-lez v2, :cond_7

    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->neutral:I

    new-instance v3, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$6;

    invoke-direct {v3, p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$6;-><init>(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->negative:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->negative:I

    new-instance v3, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$7;

    invoke-direct {v3, p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$7;-><init>(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_9
    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->arrayResItems:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->arrayResItems:I

    new-instance v3, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$4;-><init>(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->response:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->response:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;

    invoke-interface {v0, p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;->onDismiss(Landroid/app/DialogFragment;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->adapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setCustomView(I)V
    .locals 2

    iput p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->customLayoutId:I

    iget v0, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->customLayoutId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->inflateCustomView()V

    :cond_0
    return-void
.end method

.method public setItems(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->arrayResItems:I

    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->items:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setMessage(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->message:I

    return-void
.end method

.method public setNegative(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->negative:I

    return-void
.end method

.method public setNeutral(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->neutral:I

    return-void
.end method

.method public setPositive(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->positive:I

    return-void
.end method

.method public setResponse(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->response:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;

    return-void
.end method

.method public setSingleChoiceItems([Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->singleChoiceItems:[Ljava/lang/String;

    iput p2, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->itemIndex:I

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->title:I

    return-void
.end method
