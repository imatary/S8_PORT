.class Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$4;
.super Ljava/lang/Object;
.source "SideloadingTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$4;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    sparse-switch p2, :sswitch_data_0

    move v0, v1

    :goto_0
    :sswitch_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
