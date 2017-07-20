.class public Lcom/android/phone/NetworkQueryService;
.super Landroid/app/Service;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkQueryService$1;,
        Lcom/android/phone/NetworkQueryService$2;,
        Lcom/android/phone/NetworkQueryService$LocalBinder;
    }
.end annotation


# static fields
.field static OEM_FUNCTION_ID_NETWORK:I

.field static OEM_NETWORK_SCAN_CANCEL:I


# instance fields
.field private final mBinder:Lcom/android/phone/INetworkQueryService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/INetworkQueryServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mState:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/NetworkQueryService;)Lcom/android/phone/INetworkQueryService$Stub;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/NetworkQueryService;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/NetworkQueryService;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/NetworkQueryService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/NetworkQueryService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkQueryService;->setPhone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/android/phone/NetworkQueryService;->OEM_FUNCTION_ID_NETWORK:I

    const/4 v0, 0x3

    sput v0, Lcom/android/phone/NetworkQueryService;->OEM_NETWORK_SCAN_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/phone/NetworkQueryService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$LocalBinder;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/android/phone/NetworkQueryService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$1;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/phone/NetworkQueryService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$2;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-void
.end method

.method private broadcastQueryResults(Landroid/os/AsyncResult;)V
    .locals 7

    iget-object v5, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    const/4 v4, -0x1

    :try_start_0
    iput v4, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    if-nez p1, :cond_0

    const-string/jumbo v4, "AsyncResult is null."

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AsyncResult has exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_1
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/INetworkQueryServiceCallback;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "broadcasting results to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v0, v4, v2}, Lcom/android/phone/INetworkQueryServiceCallback;->onQueryComplete(Ljava/util/List;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "NetworkQuery"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "NetworkQuery"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private setPhone()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhone() MobileNetworkSettingsTab.mActiveSimId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    sget v0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "hide_popup_progress_view"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus1:Z

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus2:Z

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "binding service implementation"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    invoke-direct {p0}, Lcom/android/phone/NetworkQueryService;->setPhone()V

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
