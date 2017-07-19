.class Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$1;
.super Ljava/lang/Object;
.source "OmcRebootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;

.field final synthetic val$activity:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$1;->val$activity:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;->resetRebootTimer(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$1;->val$activity:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;->finish()V

    return-void
.end method
