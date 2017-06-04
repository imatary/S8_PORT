.class public Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;
.super Landroid/app/DialogFragment;
.source "WifiConfirmDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;
    .locals 2

    new-instance v1, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080025

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog$1;-><init>(Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
