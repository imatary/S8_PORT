.class public Lcom/android/phone/TPhoneInstallReceiver;
.super Ljava/lang/Object;
.source "TPhoneInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TPhoneInstallReceiver$1;,
        Lcom/android/phone/TPhoneInstallReceiver$2;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/TPhoneInstallReceiver;


# instance fields
.field private final INSTALL_COMPLETE:I

.field private final INSTALL_TDIALER:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final STATUS_INSTALL_IDLE:I

.field private final STATUS_TDAIL_INSTALLING:I

.field private final STATUS_TPHONE_INSTALLING:I

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/phone/TPhoneInstallReceiver$ITPhoneInstallerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mTPhoneDialerPath:Ljava/lang/String;

.field private mTPhoneInstallState:I

.field private mTPhoneInternalPath:Ljava/lang/String;

.field private packageInstaller:Landroid/content/pm/PackageInstaller;

.field private packageName:Ljava/lang/String;

.field sessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;


# direct methods
.method static synthetic -get0(Lcom/android/phone/TPhoneInstallReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/TPhoneInstallReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneDialerPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/TPhoneInstallReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInternalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/TPhoneInstallReceiver;)Landroid/content/pm/PackageInstaller;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->packageInstaller:Landroid/content/pm/PackageInstaller;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/TPhoneInstallReceiver;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInstallState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/TPhoneInstallReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/TPhoneInstallReceiver;->InstallTDialerPackage()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/TPhoneInstallReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/TPhoneInstallReceiver;->cancelTphoneInstallNotification()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/TPhoneInstallReceiver;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/TPhoneInstallReceiver;->notifyResult(IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    iput-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x82

    iput v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->INSTALL_TDIALER:I

    const/16 v0, 0x83

    iput v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->INSTALL_COMPLETE:I

    iput v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->STATUS_INSTALL_IDLE:I

    const/16 v0, 0x12d

    iput v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->STATUS_TPHONE_INSTALLING:I

    const/16 v0, 0x12e

    iput v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->STATUS_TDAIL_INSTALLING:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->listeners:Ljava/util/Vector;

    iput-object v1, p0, Lcom/android/phone/TPhoneInstallReceiver;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneDialerPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInternalPath:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInstallState:I

    new-instance v0, Lcom/android/phone/TPhoneInstallReceiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/TPhoneInstallReceiver$1;-><init>(Lcom/android/phone/TPhoneInstallReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/TPhoneInstallReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/phone/TPhoneInstallReceiver$2;-><init>(Lcom/android/phone/TPhoneInstallReceiver;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->sessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v1, "create... "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private InstallTDialerPackage()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/TPhoneInstallReceiver$4;

    invoke-direct {v1, p0}, Lcom/android/phone/TPhoneInstallReceiver$4;-><init>(Lcom/android/phone/TPhoneInstallReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private InstallTPhoneInternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/TPhoneInstallReceiver$3;

    invoke-direct {v1, p0}, Lcom/android/phone/TPhoneInstallReceiver$3;-><init>(Lcom/android/phone/TPhoneInstallReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cancelTphoneInstallNotification()V
    .locals 5

    const-string/jumbo v2, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v3, "cancelTphoneInstallNotification "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v0, 0x190

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private commitSession(I)V
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v6, "[tphone] TPhoneInstallReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "commitSession : sessionId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/TPhoneInstallReceiver;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :goto_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/phone/TPhoneInstallReceiver;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    const-string/jumbo v6, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v7, "commitSession finish"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v6

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_1
    throw v6

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private createSession()I
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v6, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v7, "createSession : "

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v4, v9}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    const/4 v5, -0x1

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/TPhoneInstallReceiver;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    :goto_0
    return v5

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method private createTphoneInstallNotification()V
    .locals 7

    const-string/jumbo v4, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v5, "createTphoneInstallNotification "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v2, 0x7f020136

    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/android/phone/TPhoneInstallReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/TPhoneInstallReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/TPhoneInstallReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f020136

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/TPhoneInstallReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const/16 v0, 0x190

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const/16 v5, 0x190

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/TPhoneInstallReceiver;
    .locals 2

    const-class v1, Lcom/android/phone/TPhoneInstallReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/TPhoneInstallReceiver;->sInstance:Lcom/android/phone/TPhoneInstallReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/TPhoneInstallReceiver;

    invoke-direct {v0}, Lcom/android/phone/TPhoneInstallReceiver;-><init>()V

    sput-object v0, Lcom/android/phone/TPhoneInstallReceiver;->sInstance:Lcom/android/phone/TPhoneInstallReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    sget-object v0, Lcom/android/phone/TPhoneInstallReceiver;->sInstance:Lcom/android/phone/TPhoneInstallReceiver;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyResult(IZ)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "[tphone] TPhoneInstallReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/TPhoneInstallReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "[tphone] TPhoneInstallReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyResult : sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", bSuccess="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInstallState:I

    const/16 v3, 0x12d

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v3, "notifyResult : STATUS_TPHONE_INSTALLING "

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v3, "notifyResult : INSTALL_COMPLETE - com.skt.prod.dialer"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x83

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static setInstance(Lcom/android/phone/TPhoneInstallReceiver;)V
    .locals 0

    sput-object p0, Lcom/android/phone/TPhoneInstallReceiver;->sInstance:Lcom/android/phone/TPhoneInstallReceiver;

    return-void
.end method

.method private writeSession(ILjava/lang/String;)I
    .locals 19

    const-string/jumbo v3, "[tphone] TPhoneInstallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeSession : sessionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", apkPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v6, -0x1

    const-string/jumbo v17, "Name"

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v6

    :cond_0
    const/4 v2, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/TPhoneInstallReceiver;->packageInstaller:Landroid/content/pm/PackageInstaller;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v3, "Name"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v16

    const/16 v18, 0x0

    const/high16 v3, 0x10000

    new-array v8, v3, [B

    :goto_0
    invoke-virtual {v15, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v3, -0x1

    if-eq v9, v3, :cond_4

    add-int v18, v18, v9

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v3, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v14, v15

    :goto_1
    const/4 v3, 0x0

    if-eqz v16, :cond_1

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_6

    :cond_3
    :goto_2
    return v3

    :cond_4
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    const-string/jumbo v3, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v4, "writeSession finish"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v14, v15

    goto :goto_1

    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v16, :cond_5

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    :goto_4
    throw v3

    :catch_1
    move-exception v10

    goto :goto_4

    :catch_2
    move-exception v12

    goto :goto_4

    :catch_3
    move-exception v11

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v14, v15

    goto :goto_3

    :catch_4
    move-exception v10

    goto :goto_2

    :catch_5
    move-exception v12

    goto :goto_2

    :catch_6
    move-exception v11

    goto :goto_2

    :catch_7
    move-exception v10

    goto :goto_1

    :catch_8
    move-exception v12

    goto :goto_1

    :catch_9
    move-exception v12

    move-object v14, v15

    goto :goto_1

    :catch_a
    move-exception v11

    goto :goto_1

    :catch_b
    move-exception v11

    move-object v14, v15

    goto :goto_1
.end method


# virtual methods
.method public StartPackageUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v1, "StartPackageUpdate... "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/phone/TPhoneInstallReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->packageInstaller:Landroid/content/pm/PackageInstaller;

    const-string/jumbo v0, "TPHONE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneDialerPath:Ljava/lang/String;

    const-string/jumbo v0, "TPHONE_INTERNAL_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInternalPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneDialerPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInternalPath:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v1, "TPhone package install path is null!!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneDialerPath:Ljava/lang/String;

    const-string/jumbo v1, "/data/user/0/com.skt.prod.dialer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneDialerPath:Ljava/lang/String;

    const-string/jumbo v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_3

    :cond_2
    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TDialer package install path is wrong!! - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneDialerPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInternalPath:Ljava/lang/String;

    const-string/jumbo v1, "/data/user/0/com.skt.prod.dialer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInternalPath:Ljava/lang/String;

    const-string/jumbo v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_5

    :cond_4
    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TPhoneInternal package install path is wrong!! - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TPhoneInstallReceiver;->mTPhoneInternalPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver;->packageInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lcom/android/phone/TPhoneInstallReceiver;->sessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    invoke-direct {p0}, Lcom/android/phone/TPhoneInstallReceiver;->createTphoneInstallNotification()V

    invoke-static {v4}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneUpgradeInstallingState(I)V

    invoke-direct {p0}, Lcom/android/phone/TPhoneInstallReceiver;->InstallTPhoneInternal()V

    return-void
.end method

.method public execute(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/phone/TPhoneInstallReceiver;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/TPhoneInstallReceiver;->createSession()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/TPhoneInstallReceiver;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/TPhoneInstallReceiver;->writeSession(ILjava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneInstallReceiver;->commitSession(I)V

    return-void
.end method
