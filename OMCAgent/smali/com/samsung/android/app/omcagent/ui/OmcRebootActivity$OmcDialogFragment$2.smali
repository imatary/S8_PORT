.class Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$2;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string v1, "persist.sys.omc_install"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->onStart()V

    return-void
.end method
