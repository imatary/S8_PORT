.class public Lcom/android/phone/mobilenetworks/controller/IntentManager;
.super Ljava/lang/Object;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;,
        Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;,
        Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/android/phone/mobilenetworks/controller/IntentManager;


# instance fields
.field mCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/controller/IntentManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->notify(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mCallBacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mReceivers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mPermissionMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mPermissionMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->initPermissionList(Ljava/util/HashMap;)V

    return-void
.end method

.method private createCallBackList(Ljava/lang/String;)Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;
    .locals 1

    new-instance v0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;-><init>(Lcom/android/phone/mobilenetworks/controller/IntentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private createReceiverIfNeeded(Ljava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mReceivers:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;

    invoke-virtual {v3, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;->hasAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "IntentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createReceiverIfNeeded : this action already registered - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v3, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentBroadCastReceiver;-><init>(Lcom/android/phone/mobilenetworks/controller/IntentManager;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->isLocaleIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :goto_0
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getPermissionByAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "IntentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createReceiverIfNeeded: Action - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " registered. Isn\'t permission needed?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private findRecordByObject(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getCallBackListByAction(Ljava/lang/String;)Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;

    invoke-virtual {v0, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->createCallBackList(Ljava/lang/String;)Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/mobilenetworks/controller/IntentManager;
    .locals 2

    sget-object v0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/phone/mobilenetworks/controller/IntentManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/controller/IntentManager;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/controller/IntentManager;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/IntentManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->sInstance:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPermissionByAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private initPermissionList(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "com.samsung.intent.action.SIMHOTSWAP"

    const-string/jumbo v1, "com.samsung.permission.SIMHOTSWAP"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.samsung.intent.action.ACTION_CROSS_MAPPING"

    const-string/jumbo v1, "com.samsung.permission.ACTION_CROSS_MAPPING"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "android.intent.action.CSC_LOADED_VOICEMAIL_DONE"

    const-string/jumbo v1, "com.samsung.permission.CSC_LOADED_VOICEMAIL_DONE"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.android.settings.PLMNACTION"

    const-string/jumbo v1, "com.android.settings.permission.PLMNACTION"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.samsung.android.action.START_DOCK_OR_HOME"

    const-string/jumbo v1, "android.permission.STOP_APP_SWITCHES"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.android.settings.subscription_deactivate"

    const-string/jumbo v1, "com.android.settings.permission.subscription"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isLocaleIntent(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, ".locale."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private notify(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getCallBackListByAction(Ljava/lang/String;)Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;

    move-result-object v1

    const-string/jumbo v2, "IntentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify: callBackList - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->notifyCallBacks(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->createReceiverIfNeeded(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getCallBackListByAction(Ljava/lang/String;)Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->addCallBack(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    return-void
.end method

.method public unregisterReceiver(Ljava/lang/Object;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->findRecordByObject(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v6, "IntentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregisterReceiver: there\'s no callbacks registered by - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;

    invoke-virtual {v4}, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->getCallBack()Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/phone/mobilenetworks/controller/IntentManager$IntentRegisterRecord;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getCallBackListByAction(Ljava/lang/String;)Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/mobilenetworks/controller/IntentManager$CallBackList;->removeCallBack(Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/controller/IntentManager;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "IntentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregisterReceiver: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " callbacks are removed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "successfully."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
