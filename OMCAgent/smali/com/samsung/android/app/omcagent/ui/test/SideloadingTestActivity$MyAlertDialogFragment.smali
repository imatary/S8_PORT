.class public Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "SideloadingTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I[Ljava/lang/String;I)Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;
    .locals 3

    new-instance v1, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "list"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "item"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "list"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "item"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$1;-><init>(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;)V

    invoke-virtual {v1, v3, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f080082

    new-instance v6, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$3;-><init>(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080081

    new-instance v7, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$2;-><init>(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$4;-><init>(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    iget-object v5, v0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v5
.end method
