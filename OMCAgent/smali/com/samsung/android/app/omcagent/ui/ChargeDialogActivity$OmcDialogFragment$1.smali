.class Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$1;
.super Ljava/lang/Object;
.source "ChargeDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment;Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$1;->val$activity:Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->changeStateAppInfoToUserCancel(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment$1;->val$activity:Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;->finish()V

    return-void
.end method
