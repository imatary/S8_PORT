.class final Lcom/android/services/telephony/TelecomAccountRegistry;
.super Ljava/lang/Object;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TelecomAccountRegistry$1;,
        Lcom/android/services/telephony/TelecomAccountRegistry$2;,
        Lcom/android/services/telephony/TelecomAccountRegistry$3;,
        Lcom/android/services/telephony/TelecomAccountRegistry$4;,
        Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountsLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mIsPrimaryUser:Z

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private mSetupAccountRetryCnt:I

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/services/telephony/TelecomAccountRegistry;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/services/telephony/TelecomAccountRegistry;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccountsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/services/telephony/TelecomAccountRegistry;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mIsPrimaryUser:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/services/telephony/TelecomAccountRegistry;)I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/services/telephony/TelecomAccountRegistry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mIsPrimaryUser:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/services/telephony/TelecomAccountRegistry;I)I
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->checkRetry()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->setupAccounts()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->tearDownAccounts()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSetupAccountRetryCnt:I

    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry$1;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry$2;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry$3;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry$3;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccountsLock:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mIsPrimaryUser:Z

    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry$4;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry$4;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private checkRetry()V
    .locals 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getAllPhoneAccounts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkRetry: telecom service created is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSetupAccountRetryCnt:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSetupAccountRetryCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSetupAccountRetryCnt:I

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1770

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private cleanupPhoneAccounts()V
    .locals 9

    const/4 v8, 0x1

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Unregistering phone account %s."

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v5, v2}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v5, v8}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;
    .locals 2

    const-class v1, Lcom/android/services/telephony/TelecomAccountRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;

    :cond_0
    sget-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setupAccounts()V
    .locals 20

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v15

    const-string/jumbo v2, "Found %d phones.  Attempting to register."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccountsLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    if-eqz v14, :cond_2

    const/4 v2, 0x0

    :try_start_0
    array-length v9, v15

    move v8, v2

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v5, v15, v8

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v16

    const-string/jumbo v2, "Phone with subscription id %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz v16, :cond_1

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getFullIccSerialNumber(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    new-instance v2, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;Landroid/content/Context;Lcom/android/internal/telephony/Phone;ZZ)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "adding account for emergency "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    new-instance v6, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;Landroid/content/Context;Lcom/android/internal/telephony/Phone;ZZ)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v19

    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->cleanupPhoneAccounts()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v12

    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/services/telephony/TelephonyConnectionService;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_5
    invoke-virtual {v12}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v13}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_2
.end method

.method private setupOnBootImmediately()V
    .locals 2

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "support_wfc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "setupOnBootImmediately"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->tearDownAccounts()V

    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->setupAccounts()V

    :cond_2
    return-void
.end method

.method private tearDownAccounts()V
    .locals 4

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->teardown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method


# virtual methods
.method getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method getTelephonyConnectionService()Lcom/android/services/telephony/TelephonyConnectionService;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    return-object v0
.end method

.method hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method isVideoPauseSupported(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->isVideoPauseSupported()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setTelephonyConnectionService(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    return-void
.end method

.method setupOnBoot()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->setupOnBootImmediately()V

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v4, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSetupAccountRetryCnt:I

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
