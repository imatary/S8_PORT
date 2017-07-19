.class Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$2;
.super Ljava/lang/Object;
.source "DevTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->access$100()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setOMCServerType(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->clearStatus(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;->onStart()V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->access$200(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;)Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->access$300(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;)V

    return-void
.end method
