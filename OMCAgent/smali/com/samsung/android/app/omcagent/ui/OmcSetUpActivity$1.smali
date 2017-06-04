.class Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "OmcSetUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v3, "com.samsung.omcagent.intent.APP_RESET"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive broadcast meassage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->finish()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$000(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "App Item List is null"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "com.samsung.omcagent.intent.APP_DOWNLOADING"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Invalid state"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "package"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Invalid package name"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$000(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setState(I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p1, v0, v3, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;ZI)V

    invoke-static {p2, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->updateItemProgress(Landroid/content/Intent;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$100(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    const-string v3, "com.samsung.omcagent.intent.APP_STATE_PACKAGENAME"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_6

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Invalid state"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, "package"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Invalid package name"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$000(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setState(I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p1, v0, v3, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;ZI)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isInstalling(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppInstallNone(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$200(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->updateAppItemList(I)V

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$100(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_9
    const-string v3, "com.samsung.omcagent.intent.APP_ICON_UPDATE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive broadcast meassage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$200(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->updateAppItemListIcon(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
