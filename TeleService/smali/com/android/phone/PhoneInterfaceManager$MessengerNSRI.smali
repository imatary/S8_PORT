.class Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessengerNSRI"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile mMsgNSRILooper:Landroid/os/Looper;

.field private mResult:[B

.field private final phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -set0(Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mDone:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mResult:[B

    return-object p1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mDone:Z

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "[NSRI_Messenger] MessengerNSRI .. created !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method declared-synchronized commonNSRIRequestProcCmd([BI)[B
    .locals 8

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_0
    :try_start_3
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v5, p2, 0x5

    const/16 v6, 0x16

    :try_start_4
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x74

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v6, 0x0

    invoke-virtual {v2, p1, v6, p2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_2
    iget-boolean v6, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_1

    :try_start_6
    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "[NSRI_Messenger] MessengerNSRI ..wait for done"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "[NSRI_Messenger] IOException!!! -commonNSRIRequestProcCmd-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "[NSRI_Messenger] commonNSRIRequestProcCmd -done-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mResult:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v6
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mMsgNSRILooper:Landroid/os/Looper;

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
