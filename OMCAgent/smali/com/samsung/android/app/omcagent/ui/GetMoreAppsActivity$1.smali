.class Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$1;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "GetMoreAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->access$000(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "App Item List is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.samsung.omcagent.intent.APP_ICON_UPDATE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive broadcast meassage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$1;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->access$100(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->updateAppItemListIcon(Landroid/content/Context;)V

    goto :goto_0
.end method
