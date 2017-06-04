.class public Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;
.super Landroid/app/DialogFragment;
.source "OmcRebootActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OmcDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;
    .locals 2

    new-instance v1, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x69

    invoke-static {v3, v4}, Lcom/samsung/android/app/omcagent/ui/OmcNotificationManager;->clearNotifictaion(Landroid/content/Context;I)V

    const v4, 0x7f080061

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f08005f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f08005d

    new-instance v5, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$1;

    invoke-direct {v5, p0, v3, v0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$1;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f08005e

    new-instance v5, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$2;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;Landroid/content/ComponentName;Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
