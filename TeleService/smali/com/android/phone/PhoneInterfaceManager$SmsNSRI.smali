.class Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsNSRI"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mIntResult:I

.field private mResult:[B

.field private volatile mSmsNSRILooper:Landroid/os/Looper;

.field private final phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -set0(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mResult:[B

    return-object p1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z

    const-string/jumbo v0, "PhoneInterfaceManager"

    const-string/jumbo v1, "[NSRI_SMS] SmsNSRI .. created !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method declared-synchronized checkNSRIUsimCmd()I
    .locals 9

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->wait()V
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
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x4

    const/16 v6, 0x16

    :try_start_4
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x73

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_2
    iget-boolean v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_1

    :try_start_6
    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "[NSRI_SMS] SmsNSRI ..wait for done"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->wait()V
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

    const-string/jumbo v7, "[NSRI_SMS] IOException!!! -checkNSRIUsimCmd-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mResult:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    iput v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mIntResult:I

    const-string/jumbo v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[NSRI_SMS] ==done==   mIntResult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mIntResult:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mIntResult:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v6
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mSmsNSRILooper:Landroid/os/Looper;

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->notifyAll()V
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

.method declared-synchronized smsNSRIDecryptCmd([BI)[B
    .locals 8

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->wait()V
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
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v5, p2, 0x5

    const/16 v6, 0x16

    :try_start_4
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x71

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
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_2
    iget-boolean v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_1

    :try_start_6
    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "[NSRI_SMS] SmsNSRI ..wait for done"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->wait()V
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

    const-string/jumbo v7, "[NSRI_SMS] IOException!!! -smsNSRIDecryptCmd-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "PhoneInterfaceManager"

    const-string/jumbo v7, "done"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mResult:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v6
.end method

.method declared-synchronized smsNSRIDecryptTxCmd(Ljava/lang/String;[BI)[B
    .locals 10

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_0
    :try_start_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, p3

    add-int/lit8 v5, v7, 0x6

    const/16 v7, 0x16

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v7, 0x72

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v2, p2, v7, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_2
    iget-boolean v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v7, :cond_1

    :try_start_6
    const-string/jumbo v7, "PhoneInterfaceManager"

    const-string/jumbo v8, "[NSRI_SMS] SmsNSRI ..wait for done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v7, "PhoneInterfaceManager"

    const-string/jumbo v8, "[NSRI_SMS] IOException!!! -smsNSRIDecryptTxCmd-"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "PhoneInterfaceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[NSRI_SMS] ==done== smsNSRIDecryptTxCmd  retResult.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mResult:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mResult:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v7
.end method

.method declared-synchronized smsNSRIEncryptCmd(Ljava/lang/String;[BI)[B
    .locals 9

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_0
    :try_start_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, p3

    add-int/lit8 v5, v7, 0x6

    const/16 v7, 0x16

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v7, 0x70

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v2, p2, v7, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_2
    iget-boolean v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v7, :cond_1

    :try_start_6
    const-string/jumbo v7, "PhoneInterfaceManager"

    const-string/jumbo v8, "[NSRI_SMS] SmsNSRI ..wait for done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v7, "PhoneInterfaceManager"

    const-string/jumbo v8, "[NSRI_SMS] IOException!!! -smsNSRIEncryptCmd-"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "PhoneInterfaceManager"

    const-string/jumbo v8, "done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->mResult:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v7
.end method
