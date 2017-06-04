.class Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$3;
.super Ljava/lang/Object;
.source "SideloadingTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;

    sget-object v1, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    # getter for: Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->targetOmcPackagePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->access$400(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->startInstall(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
