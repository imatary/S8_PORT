.class Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$3;
.super Ljava/lang/Object;
.source "ChargeDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment;

.field final synthetic val$activity:Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment;Landroid/content/ComponentName;Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$3;->val$component:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$3;->val$activity:Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$3;->val$component:Landroid/content/ComponentName;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/common/util/GeneralUtils;->requestSystemKeyEvent(IZLandroid/content/ComponentName;)Z

    const/16 v0, 0xbb

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$3;->val$component:Landroid/content/ComponentName;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/common/util/GeneralUtils;->requestSystemKeyEvent(IZLandroid/content/ComponentName;)Z

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->changeStateAppInfoToUserCancel(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$3;->val$activity:Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
