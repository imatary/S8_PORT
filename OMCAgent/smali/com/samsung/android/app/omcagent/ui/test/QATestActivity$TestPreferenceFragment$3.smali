.class Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$3;
.super Ljava/lang/Object;
.source "QATestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->showOmcSettingDiaglog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setVirtualSimDeactivated(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    # getter for: Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->virtualSIMInfoPref:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->access$400(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->isVirtualSimActivated(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$3;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->updateOMCStatus()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
