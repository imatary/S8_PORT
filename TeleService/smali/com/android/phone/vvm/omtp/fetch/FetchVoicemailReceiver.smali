.class public Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FetchVoicemailReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mNetworkCallback:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mRetryCount:I

.field private mUid:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->releaseNetwork()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->requestNetwork()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "source_data"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "subscription_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private releaseNetwork()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkCallback:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private requestNetwork()V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkCallback:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    const v3, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v3, 0x0

    const-string/jumbo v0, "android.intent.action.FETCH_VOICEMAIL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FetchVoicemailReceiver"

    const-string/jumbo v1, "android.intent.action.FETCH_VOICEMAIL intent sent with no data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    const-string/jumbo v2, "source_package"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUid:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FetchVoicemailReceiver"

    const-string/jumbo v1, "Account null and no default sim found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3
    :try_start_1
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->isVvmSourceRegistered(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "FetchVoicemailReceiver"

    const-string/jumbo v1, "Account not registered - cannot retrieve message."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v8

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkRequest:Landroid/net/NetworkRequest;

    new-instance v0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;-><init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;)V

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mNetworkCallback:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->requestNetwork()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
