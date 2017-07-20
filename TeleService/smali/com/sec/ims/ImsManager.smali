.class public Lcom/sec/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ImsManager$1;,
        Lcom/sec/ims/ImsManager$ConnectionListener;,
        Lcom/sec/ims/ImsManager$DmConfigEventRelay;,
        Lcom/sec/ims/ImsManager$ImsSwitchObserver;
    }
.end annotation


# instance fields
.field private imsSwitchObserver:Lcom/sec/ims/ImsManager$ImsSwitchObserver;

.field private final mAutoConfigurationListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/IAutoConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDialogListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/IDialogEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

.field mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

.field private final mImSessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/im/IImSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsSwitchListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/IIMSSwitchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

.field private final mOngoingFtEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/ft/IImsOngoingFtEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartReceiver:Landroid/content/BroadcastReceiver;

.field private final mRttListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/IRttEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/volte2/IImsVideoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sec/ims/ImsManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mImsSwitchListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager$ConnectionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/IImsService;
    .locals 1

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/ims/ImsManager;Lcom/sec/ims/IImsService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/ImsManager;->registerPreviousListeners(Lcom/sec/ims/IImsService;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mImsSwitchListenerList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->imsSwitchObserver:Lcom/sec/ims/ImsManager$ImsSwitchObserver;

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    new-instance v0, Lcom/sec/ims/ImsManager$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$1;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mImsSwitchListenerList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->imsSwitchObserver:Lcom/sec/ims/ImsManager$ImsSwitchObserver;

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    new-instance v0, Lcom/sec/ims/ImsManager$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$1;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    return-void
.end method

.method private getImsService()Lcom/sec/ims/IImsService;
    .locals 1

    const-string/jumbo v0, "ims6"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;

    move-result-object v0

    return-object v0
.end method

.method private registerPreviousListeners(Lcom/sec/ims/IImsService;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {p1, v3}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IDialogEventListener;

    invoke-interface {p1, v2}, Lcom/sec/ims/IImsService;->registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/volte2/IImsVideoListener;

    invoke-interface {p1, v6}, Lcom/sec/ims/IImsService;->registerVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/im/IImSessionListener;

    invoke-interface {p1, v5}, Lcom/sec/ims/IImsService;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    goto :goto_3

    :cond_4
    iget-object v8, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    invoke-interface {p1, v4}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    goto :goto_4

    :cond_5
    iget-object v8, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IAutoConfigurationListener;

    invoke-interface {p1, v1}, Lcom/sec/ims/IImsService;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5
.end method


# virtual methods
.method public connectService()V
    .locals 4

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Register Receiver for Restart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/ims/ImsManager$2;

    invoke-direct {v2, p0}, Lcom/sec/ims/ImsManager$2;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.sec.ims.imsmanager.RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    invoke-interface {v2}, Lcom/sec/ims/ImsManager$ConnectionListener;->onConnected()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/ims/ImsManager;->registerPreviousListeners(Lcom/sec/ims/IImsService;)V

    :cond_2
    return-void
.end method

.method public disconnectService()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    invoke-interface {v1}, Lcom/sec/ims/ImsManager$ConnectionListener;->onDisconnected()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ImsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "getConfigValues"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/ims/IImsService;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v4
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "getRegistrationInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "getRegistrationInfo: Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/sec/ims/IImsService;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v4
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "getRegistrationInfoByServiceType"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "getRegistrationInfoByServiceType: Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/ims/IImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v4
.end method

.method public hasVoLteSim()Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "hasVoLteSim"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/sec/ims/IImsService;->hasVoLteSim()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v4
.end method

.method public isForbidden()Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "isForbidden"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/sec/ims/IImsService;->isForbidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v4
.end method

.method public isRcsEnabled(Z)Z
    .locals 14

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x0

    new-instance v9, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.sec.ims.settings/imsswitch/rcs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/ImsSettings$ImsServiceSwitchTable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "ImsManager"

    const-string/jumbo v1, "isRcsEnabled: not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return v13

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "ImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRcsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "enabled"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "enabled"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_3

    const/4 v10, 0x1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-nez p1, :cond_4

    return v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    :try_start_0
    const-string/jumbo v0, "root/vers/version"

    invoke-virtual {v9, v0}, Lcom/sec/ims/settings/RcsConfigurationReader;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "info/completed"

    invoke-virtual {v9, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v0, "ImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRcsEnabled: version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " autoConfigComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v10, :cond_6

    if-eqz v6, :cond_5

    if-lez v11, :cond_6

    :cond_5
    move v0, v12

    :goto_2
    return v0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "ImsManager"

    const-string/jumbo v1, "isRcsEnabled: AutoConfiguration is not completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :cond_6
    move v0, v13

    goto :goto_2
.end method

.method public isServiceAvailable(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "ImsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "isServiceAvailable: not connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v1, p1, v2}, Lcom/sec/ims/IImsService;->isServiceAvailable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v5
.end method

.method public isServiceAvailable(Ljava/lang/String;I)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "ImsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "isServiceAvailable: not connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IImsService;->isServiceAvailable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v5
.end method

.method public isVolteEnabledFromNetwork()Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "isVolteEnabledFromNetwork"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "isVolteEnabledFromNetwork: Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/sec/ims/IImsService;->isVolteEnabledFromNetwork()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v4
.end method

.method public registerImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 4

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "registerImsOngoingFtEventListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "registerImsRegistrationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "registerVideoListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/ims/IImsService;->registerVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public unregisterImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 4

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "unregisterImsOngoingFtEventListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/ims/IImsService;->unregisterImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "unregisterImsRegistrationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "unregisterVideoListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ImsManager"

    const-string/jumbo v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/ims/IImsService;->unregisterVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
