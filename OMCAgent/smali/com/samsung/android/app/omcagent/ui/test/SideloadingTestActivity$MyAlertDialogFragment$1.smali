.class Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$1;
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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->access$500(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->access$402(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
