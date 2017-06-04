.class Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$1;
.super Ljava/lang/Object;
.source "QATestActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Configuration update"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.omcagent.intent.USER_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const-string v2, "AppResInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$1;->this$0:Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
