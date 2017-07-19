.class Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;
.super Ljava/lang/Object;
.source "QATestActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;
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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetSIMInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->showOmcSettingDiaglog()V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setVirtualSimDeactivated(Landroid/content/Context;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->access$200(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->access$400(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->access$300(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, "AppsServer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Omc Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setPreDeployAppServer(Landroid/content/Context;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->access$600(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->access$500(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setOriginAppServer(Landroid/content/Context;)V

    goto :goto_1
.end method
