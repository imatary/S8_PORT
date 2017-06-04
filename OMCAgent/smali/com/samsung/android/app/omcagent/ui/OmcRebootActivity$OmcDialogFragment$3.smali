.class Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;
.super Ljava/lang/Object;
.source "OmcRebootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;Landroid/content/ComponentName;Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;->val$component:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;->val$activity:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;->val$component:Landroid/content/ComponentName;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/common/util/GeneralUtils;->requestSystemKeyEvent(IZLandroid/content/ComponentName;)Z

    const/16 v1, 0xbb

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;->val$component:Landroid/content/ComponentName;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/common/util/GeneralUtils;->requestSystemKeyEvent(IZLandroid/content/ComponentName;)Z

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;->resetRebootTimer(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment$3;->val$activity:Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
