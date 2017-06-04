.class public Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;
.super Landroid/app/DialogFragment;
.source "DevTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerTypeDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;
    .locals 2

    new-instance v1, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypeList:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->access$000()[Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypeIndex:I
    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->access$100()I

    move-result v2

    new-instance v3, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$1;-><init>(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f08009e

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$2;-><init>(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080083

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$3;-><init>(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
