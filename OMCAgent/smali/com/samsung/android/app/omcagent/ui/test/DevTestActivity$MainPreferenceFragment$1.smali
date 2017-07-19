.class Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DevTestActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showServerTypeDiaglog()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "serverTypeDialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;->newInstance()Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;

    move-result-object v1

    const-string v3, "serverTypeDialog"

    invoke-virtual {v1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/16 v6, 0x20

    const v5, 0x14000020

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Update"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Start Register UI"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.omcagent.intent.USER_UPDATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    const-string v3, "SelectServerType"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    sget-object v4, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getOMCServerType(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->setCurrentServerType(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->showServerTypeDiaglog()V

    goto :goto_0

    :cond_2
    const-string v3, "Clear"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->clearStatus(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->updateOMCStatus()V

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "call CLEAR_DB"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.omcagent.intent.CLEAR_DB"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_3
    const-string v3, "InstallFinish"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Call for Setupwizard"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v3, "DMAdmin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Call OMC DM"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.omcagent.intent.action.OMC_ADMIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_5
    const-string v3, "OmcTest"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "AppInstall"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "Status"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "omc.status"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->readOmcStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "GetMoreApps"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
