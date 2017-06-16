.class public Lcom/android/bluetooth/pbapclient/PbapPCEClient;
.super Ljava/lang/Object;
.source "PbapPCEClient.java"

# interfaces
.implements Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;,
        Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-bluetooth-pbapclient-BluetoothPbapClient$ConnectionStateSwitchesValues:[I = null

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PbapPCEClient"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

.field private mClientConnected:Z

.field private mConnectionHandler:Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;

.field private mContactHandler:Landroid/os/Handler;

.field private mContactHandlerThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHandler:Lcom/android/bluetooth/pbapclient/PbapHandler;

.field private mLastPull:Lcom/android/bluetooth/pbapclient/PullRequest;

.field private final mPendingRequests:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/bluetooth/pbapclient/PullRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/accounts/AccountManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Lcom/android/bluetooth/pbapclient/PbapHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mHandler:Lcom/android/bluetooth/pbapclient/PbapHandler;

    return-object v0
.end method

.method private static synthetic -getcom-android-bluetooth-pbapclient-BluetoothPbapClient$ConnectionStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-com-android-bluetooth-pbapclient-BluetoothPbapClient$ConnectionStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-com-android-bluetooth-pbapclient-BluetoothPbapClient$ConnectionStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->values()[Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->CONNECTED:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->CONNECTING:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->DISCONNECTED:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->DISCONNECTING:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-com-android-bluetooth-pbapclient-BluetoothPbapClient$ConnectionStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;)Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->downloadCallLogs()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->downloadPhoneBook()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->resetState()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mPendingRequests:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClientConnected:Z

    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mAccount:Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;-><init>(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mConnectionHandler:Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;

    new-instance v0, Lcom/android/bluetooth/pbapclient/PbapHandler;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbapclient/PbapHandler;-><init>(Lcom/android/bluetooth/pbapclient/PbapHandler$PbapListener;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mHandler:Lcom/android/bluetooth/pbapclient/PbapHandler;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PBAP contact handler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;-><init>(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandler:Landroid/os/Handler;

    return-void
.end method

.method private addPullRequest(Lcom/android/bluetooth/pbapclient/PullRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "PbapPCEClient"

    const-string/jumbo v1, "aborting pull request."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private downloadCallLogs()V
    .locals 5

    new-instance v0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "telecom/ich.vcf"

    invoke-direct {v0, v3, v4}, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->addPullRequest(Lcom/android/bluetooth/pbapclient/PullRequest;)V

    new-instance v2, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "telecom/och.vcf"

    invoke-direct {v2, v3, v4}, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->addPullRequest(Lcom/android/bluetooth/pbapclient/PullRequest;)V

    new-instance v1, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "telecom/mch.vcf"

    invoke-direct {v1, v3, v4}, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->addPullRequest(Lcom/android/bluetooth/pbapclient/PullRequest;)V

    return-void
.end method

.method private downloadPhoneBook()V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->addPullRequest(Lcom/android/bluetooth/pbapclient/PullRequest;)V

    return-void
.end method

.method private onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo v1, "PbapPCEClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processNextRequest()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->getState()Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->CONNECTED:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbapclient/PullRequest;

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mLastPull:Lcom/android/bluetooth/pbapclient/PullRequest;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mLastPull:Lcom/android/bluetooth/pbapclient/PullRequest;

    iget-object v1, v1, Lcom/android/bluetooth/pbapclient/PullRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method private resetState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->disconnect()V

    :cond_0
    iput-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClientConnected:Z

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mAccount:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mConnectionHandler:Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mConnectionHandler:Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ConnectionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getConnectionState()I
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClient:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->getState()Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    move-result-object v1

    invoke-static {}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-getcom-android-bluetooth-pbapclient-BluetoothPbapClient$ConnectionStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public declared-synchronized onPbapClientConnected(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClientConnected:Z

    iget-boolean v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClientConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mClientConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->processNextRequest()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPhoneBookError()V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->processNextRequest()Z

    return-void
.end method

.method public onPhoneBookPullDone(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mLastPull:Lcom/android/bluetooth/pbapclient/PullRequest;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PullRequest;->setResults(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mLastPull:Lcom/android/bluetooth/pbapclient/PullRequest;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->processNextRequest()Z

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PbapPCEClient"

    const-string/jumbo v1, "Already started, ignoring request to start again."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->mContactHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
