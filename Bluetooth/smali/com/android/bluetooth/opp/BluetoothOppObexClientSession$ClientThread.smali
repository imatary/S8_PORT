.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x1f4


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/obex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mNumShares:I

.field private mTransport1:Ljavax/obex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const-string/jumbo v1, "BtOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "BtOppObexClient"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private auditLogForMdm(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x5

    const-string/jumbo v2, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "severity"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "group"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "outcome"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "component"

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " via Bluetooth Obex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed - device not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private connect(I)V
    .locals 12

    const/4 v10, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get14(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljavax/obex/ObexTransport;

    move-result-object v0

    instance-of v0, v0, Lcom/android/bluetooth/BluetoothObexTransport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get14(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljavax/obex/ObexTransport;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothObexTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get14(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljavax/obex/ObexTransport;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothObexTransport;->getRemoteName()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Create ClientSession with transport "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    new-instance v0, Ljavax/obex/ClientSession;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-direct {v0, v5}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v0, :cond_4

    iput-boolean v10, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    new-instance v8, Ljavax/obex/HeaderSet;

    invoke-direct {v8}, Ljavax/obex/HeaderSet;-><init>()V

    int-to-long v10, p1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v5, 0xc0

    invoke-virtual {v8, v5, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v0, v8}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BtOppObexClient"

    const-string/jumbo v5, "OBEX session created"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    const-string/jumbo v5, "Opp Connected"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppConnectionLogForMdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_1
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v0, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OBEX session create error : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "Opp Connection failed"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppConnectionLogForMdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v6

    const-string/jumbo v0, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OBEX session connect error : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "Opp Connection failed"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppConnectionLogForMdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private disconnect()V
    .locals 8

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get14(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljavax/obex/ObexTransport;

    move-result-object v0

    instance-of v0, v0, Lcom/android/bluetooth/BluetoothObexTransport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get14(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljavax/obex/ObexTransport;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothObexTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get14(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljavax/obex/ObexTransport;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothObexTransport;->getRemoteName()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BtOppObexClient"

    const-string/jumbo v5, "OBEX session disconnected"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "BtOppObexClient"

    const-string/jumbo v5, "OBEX session close mCs"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->close()V

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "BtOppObexClient"

    const-string/jumbo v5, "OBEX session closed"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    const-string/jumbo v5, "Opp Disconnected"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppConnectionLogForMdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_2
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OBEX session disconnect error"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "Opp Disconnection Failed"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppConnectionLogForMdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v0, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OBEX session close error"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "Opp Disconnection Failed"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppConnectionLogForMdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v6

    const-string/jumbo v0, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTransport.close error : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 8

    const/16 v7, 0xc8

    const/16 v3, 0xc8

    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v4, :cond_0

    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v3, 0x1ea

    const-string/jumbo v4, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OBEX doSend error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v4, :cond_1

    const/16 v3, 0x1f1

    :cond_1
    if-ne v3, v7, :cond_3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v3

    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    :goto_2
    const-string/jumbo v4, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OppTransfer sending termination status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v7, :cond_4

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v3, v4, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v4, v5, v3}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    :cond_4
    const/16 v4, 0xc7

    if-eq v3, v4, :cond_5

    const-string/jumbo v4, "BtOppObexClient"

    const-string/jumbo v5, "opp transfer is stopped. send ACTION_OPP_TRANSFER_STOP intent to block starting new opptransfer for same timestamp"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.btopp.intent.action.OPP_TRANSFER_STOP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.btopp.intent.extra.TIMESTAMP"

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-wide v6, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    const/16 v4, 0x1f2

    if-ne v3, v4, :cond_6

    const-string/jumbo v4, "BtOppObexClient"

    const-string/jumbo v5, "p2p connection is failed. So send timestamp intent to oppservice for recovering OPP transfer"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.btopp.intent.action.BT_ADVOPP_RECOVER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.btopp.intent.extra.TIMESTAMP"

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-wide v6, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x2

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v3, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "BtOppObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error when sending file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v2, 0x1f0

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private oppConnectionLogForMdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->isBluetoothLogEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->logOppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 18

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string/jumbo v14, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Client thread processShareInfo() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v14, v14, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v5

    sget-object v14, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-ne v5, v14, :cond_2

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "BtOppObexClient"

    const-string/jumbo v15, "BluetoothOppSendFileInfo get invalid file. Try generateFileInfo again"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v15, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v5

    :cond_2
    iget-object v14, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v14, :cond_3

    iget-wide v14, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_4

    :cond_3
    const-string/jumbo v14, "BtOppObexClient"

    const-string/jumbo v15, "BluetoothOppSendFileInfo get invalid file"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v0, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    :goto_0
    return-object v5

    :cond_4
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v14

    if-eqz v14, :cond_5

    const-string/jumbo v14, "BtOppObexClient"

    const-string/jumbo v15, "Generate BluetoothOppSendFileInfo:"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "length    :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mimetype  :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "filename  :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v15, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v15, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set6(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v14, "hint"

    iget-object v15, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "total_bytes"

    iget-wide v0, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v14, "mimetype"

    iget-object v15, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get5(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v14, v14, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v15, 0x5

    if-eq v14, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "ultra_powersaving_mode"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "emergency_mode"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-wrap3(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-virtual {v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->isP2pConnected()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-virtual {v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->isWifiApEnabled()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v15, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Ljava/lang/String;)Z

    move-result v9

    if-nez v6, :cond_7

    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    :cond_7
    const-string/jumbo v14, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[ADVANCED OPP] Sender is NOT available to use p2p.(isAFWMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", ultraPowerMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", emergencyMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppP2pConnected:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v3, v11, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const/4 v14, 0x1

    if-eq v4, v14, :cond_7

    if-eqz v12, :cond_c

    if-eqz v7, :cond_c

    if-nez v8, :cond_a

    if-eqz v13, :cond_b

    :cond_a
    const-string/jumbo v14, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[ADVANCED OPP] Sender is NOT available to use p2p.(wifip2p : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", wifiap : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", eir : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "BtOppObexClient[ADVANCED OPP] Sender is NOT available to use p2p.(wifip2p : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", wifiap : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", eir : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->getP2pMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v14, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[ADVANCED OPP] Sender is available to use p2p & MacAddress: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "BtOppObexClient[ADVANCED OPP] Sender is available to use p2p & MacAddress: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v14, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[ADVANCED OPP] Sender is NOT available to use p2p.(uri : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mimetype : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "BtOppObexClient[ADVANCED OPP] Sender is NOT available to use p2p.(uri : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", mimetype : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 43

    const/4 v14, 0x0

    const/16 v32, -0x1

    const-wide/16 v26, 0x0

    const/16 v34, 0xc8

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v39, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v31, Ljavax/obex/HeaderSet;

    invoke-direct/range {v31 .. v31}, Ljavax/obex/HeaderSet;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x42

    move-object/from16 v0, v31

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get18(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v38

    if-nez v38, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x31

    move-object/from16 v0, v31

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    const/16 v40, 0xc0

    invoke-static/range {v38 .. v40}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    :try_start_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const/16 v39, 0xc3

    move-object/from16 v0, v31

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v17, 0x0

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v38

    if-eqz v38, :cond_1

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "put headerset for "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v38

    move-object/from16 v0, v38

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object/from16 v23, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_1
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v14, :cond_3

    :try_start_8
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v38

    if-eqz v38, :cond_2

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "openOutputStream "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v17

    :cond_3
    :goto_2
    if-nez v14, :cond_4

    :try_start_9
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v38, "current_bytes"

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v38, "status"

    const/16 v39, 0xc0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    if-nez v14, :cond_4a

    const/16 v30, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v28, 0x0

    const/16 v20, 0x0

    const-wide/16 v36, 0x0

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v21

    move/from16 v0, v21

    new-array v6, v0, [B

    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v38, v0

    const/16 v39, 0x4000

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get10(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v38

    if-nez v38, :cond_8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v40, v38

    if-eqz v38, :cond_8

    move/from16 v0, v21

    invoke-static {v5, v6, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-wrap4(Ljava/io/InputStream;[BI)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v39

    const/16 v40, 0x4

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    const-wide/32 v40, 0xc350

    invoke-virtual/range {v38 .. v41}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-enter p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    monitor-exit p0

    const/16 v38, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v30

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    add-long v26, v40, v38

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    cmp-long v38, v26, v38

    if-nez v38, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v38

    const/16 v39, 0x4

    invoke-virtual/range {v38 .. v39}, Landroid/os/Handler;->removeMessages(I)V

    monitor-enter p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    monitor-exit p0

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v32

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_6

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "[ADVANCED OPP] responseCode : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v38, 0xe2

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_2f

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_7

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "[ADVANCED OPP] Sender & Receiver are available to use p2p"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string/jumbo v38, "BtOppObexClient[ADVANCED OPP] Sender & Receiver are available to use p2p"

    invoke-static/range {v38 .. v38}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->setRemoteDeviceAddress(Ljava/lang/String;)V

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "[ADVANCED OPP] send intent for peer\'s MAC"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v38, "com.samsung.btopp.intent.action.ACTION_SHARE_MAC_ADVOPP_FOR_P2P"

    move-object/from16 v0, v38

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v38, "android.btopp.intent.extra.PEERMAC"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->RegisterWiFiReceiver()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v41, v0

    invoke-virtual/range {v38 .. v41}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->handoverParam(Landroid/content/Context;Landroid/os/Handler;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set3(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    const/16 v38, 0x1

    sput-boolean v38, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v38

    const-string/jumbo v39, "wifip2p"

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v39

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get11(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v38

    if-nez v38, :cond_2e

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "[ADVANCED OPP] enableP2P in service connected"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->enableP2p()V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->sendBtP2pSettingsStartedBroadcast(Z)V

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get6(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v38

    if-eqz v38, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->removeP2pConfirm(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get17(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v38

    const/16 v39, 0x65

    invoke-virtual/range {v38 .. v39}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get17(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v38

    const-wide/16 v40, 0x61a8

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "[ADVANCED OPP] Waiting 4sec"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get11(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v38

    if-nez v38, :cond_34

    const-wide/16 v38, 0xfa0

    invoke-static/range {v38 .. v39}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_6
    :try_start_f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v38

    const-string/jumbo v39, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_9

    const-string/jumbo v38, "BAOI"

    const-string/jumbo v39, "ADVANCED_OPP"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v40

    const/16 v41, 0x3e8

    move-object/from16 v0, v38

    move/from16 v1, v41

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->insertGSIMLog(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get6(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-result v38

    if-eqz v38, :cond_a

    :try_start_10
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "[ADVANCED OPP] Waiting until p2p transfer done : isAdvancedOppAtClient "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get6(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v38, 0x3e8

    invoke-static/range {v38 .. v39}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_7

    :catch_0
    move-exception v11

    :try_start_11
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "[ADVANCED OPP] Waiting until p2p transfer done, exiting : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "[ADVANCED OPP] return status_adv : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get12(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/ArrayList;

    move-result-object v38

    if-nez v38, :cond_35

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "[ADVANCED OPP] mSharesForWifi is null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-result v38

    if-eqz v22, :cond_b

    :try_start_12
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v39

    const/16 v40, 0x1f2

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    :cond_c
    if-nez v14, :cond_e

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v32

    const/16 v39, -0x1

    move/from16 v0, v32

    move/from16 v1, v39

    if-eq v0, v1, :cond_3c

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v39

    if-eqz v39, :cond_d

    const-string/jumbo v39, "BtOppObexClient"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Get response code "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v39, 0xa0

    move/from16 v0, v32

    move/from16 v1, v39

    if-eq v0, v1, :cond_e

    sget-boolean v39, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    if-eqz v39, :cond_39

    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_f
    if-eqz v23, :cond_10

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    :cond_10
    :goto_a
    return v38

    :cond_11
    const-string/jumbo v38, "ADVTORECOVER"

    const/16 v39, 0x31

    move-object/from16 v0, v31

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set10(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "file length is invalid."

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v38, 0x19b

    return v38

    :catchall_0
    move-exception v38

    :try_start_13
    monitor-exit p0

    throw v38
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :catch_2
    move-exception v8

    :try_start_14
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const/16 v34, 0x1f1

    if-eqz v22, :cond_12

    :try_start_15
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v38

    const/16 v39, 0x1f2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    :cond_13
    if-nez v14, :cond_15

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v32

    const/16 v38, -0x1

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_69

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_14

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Get response code "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/16 v38, 0xa0

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_15

    sget-boolean v38, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    if-eqz v38, :cond_66

    :cond_15
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    if-eqz v17, :cond_16

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_16
    if-eqz v23, :cond_17

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    :cond_17
    :goto_c
    return v34

    :catch_3
    move-exception v8

    const/16 v34, 0x1f0

    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Error when put HeaderSet : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v38

    monitor-exit p0

    throw v38
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :catch_4
    move-exception v12

    :try_start_17
    invoke-virtual {v12}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    const/16 v34, 0x1f0

    if-eqz v22, :cond_18

    :try_start_18
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v38

    const/16 v39, 0x1f2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    :cond_19
    if-nez v14, :cond_1b

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v32

    const/16 v38, -0x1

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_65

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_1a

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Get response code "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/16 v38, 0xa0

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_1b

    sget-boolean v38, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    if-eqz v38, :cond_62

    :cond_1b
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    if-eqz v17, :cond_1c

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_1c
    if-eqz v23, :cond_17

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5

    goto/16 :goto_c

    :catch_5
    move-exception v8

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "Error when closing stream after send"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    cmp-long v38, v26, v38

    if-eqz v38, :cond_17

    const/16 v34, 0x193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    goto/16 :goto_c

    :catch_6
    move-exception v8

    const/16 v34, 0x1f0

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Error when openOutputStream : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto/16 :goto_2

    :catchall_2
    move-exception v38

    monitor-exit p0

    throw v38
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :catch_7
    move-exception v10

    :try_start_1a
    invoke-virtual {v10}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    const/16 v34, 0x1f0

    if-eqz v22, :cond_1d

    :try_start_1b
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v38

    const/16 v39, 0x1f2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    :cond_1e
    if-nez v14, :cond_20

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v32

    const/16 v38, -0x1

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_61

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_1f

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Get response code "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/16 v38, 0xa0

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_20

    sget-boolean v38, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    if-eqz v38, :cond_5e

    :cond_20
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    if-eqz v17, :cond_21

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_21
    if-eqz v23, :cond_17

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8

    goto/16 :goto_c

    :catch_8
    move-exception v8

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "Error when closing stream after send"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    cmp-long v38, v26, v38

    if-eqz v38, :cond_17

    const/16 v34, 0x193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    goto/16 :goto_c

    :catchall_3
    move-exception v38

    :try_start_1c
    monitor-exit p0

    throw v38
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1c} :catch_9
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :catch_9
    move-exception v13

    :try_start_1d
    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    const/16 v34, 0x1f0

    if-eqz v22, :cond_22

    :try_start_1e
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v38

    const/16 v39, 0x1f2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    :cond_23
    if-nez v14, :cond_25

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v32

    const/16 v38, -0x1

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_5d

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_24

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Get response code "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/16 v38, 0xa0

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_25

    sget-boolean v38, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    if-eqz v38, :cond_5a

    :cond_25
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    if-eqz v17, :cond_26

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_26
    if-eqz v23, :cond_17

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_a

    goto/16 :goto_c

    :catch_a
    move-exception v8

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "Error when closing stream after send"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    cmp-long v38, v26, v38

    if-eqz v38, :cond_17

    const/16 v34, 0x193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    goto/16 :goto_c

    :cond_27
    :try_start_1f
    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "[ADVANCED OPP] TargetMacAddress = null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_1f} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_1f} :catch_9
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    goto/16 :goto_3

    :catchall_4
    move-exception v38

    if-eqz v22, :cond_28

    :try_start_20
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v39

    const/16 v40, 0x1f2

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    :cond_29
    if-nez v14, :cond_2b

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v32

    const/16 v39, -0x1

    move/from16 v0, v32

    move/from16 v1, v39

    if-eq v0, v1, :cond_6d

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v39

    if-eqz v39, :cond_2a

    const-string/jumbo v39, "BtOppObexClient"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Get response code "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/16 v39, 0xa0

    move/from16 v0, v32

    move/from16 v1, v39

    if-eq v0, v1, :cond_2b

    sget-boolean v39, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    if-eqz v39, :cond_6a

    :cond_2b
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    if-eqz v17, :cond_2c

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_2c
    if-eqz v23, :cond_2d

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_10

    :cond_2d
    :goto_11
    throw v38

    :cond_2e
    :try_start_21
    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "[ADVANCED OPP] p2p is already enabled / request p2p listen"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isP2pConnected()Z

    move-result v39

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->setIsWifiP2pEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->requestP2pListen()V

    goto/16 :goto_4

    :cond_2f
    const/16 v38, 0x90

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_30

    const/16 v38, 0xa0

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_33

    :cond_30
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_31

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "Remote accept"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v38

    if-eqz v38, :cond_32

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v38

    const-string/jumbo v39, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_32

    const-string/jumbo v38, "BAOI"

    const-string/jumbo v39, "ORIGINAL_OPP"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v40

    const/16 v41, 0x3e8

    move-object/from16 v0, v38

    move/from16 v1, v41

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->insertGSIMLog(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    :cond_32
    const/16 v20, 0x1

    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v38, "current_bytes"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_33
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Remote reject, Response code is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    goto/16 :goto_5

    :cond_34
    const-wide/16 v38, 0x3e8

    :try_start_22
    invoke-static/range {v38 .. v39}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_22} :catch_b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_22} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    goto/16 :goto_6

    :catch_b
    move-exception v11

    :try_start_23
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "[ADVANCED OPP] Waiting 4sec error"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get12(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/ArrayList;

    move-result-object v39

    monitor-enter v39
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_23} :catch_9
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get12(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/ArrayList;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_38

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v38

    const/16 v40, 0xc7

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_36

    const/16 v38, 0xc7

    move/from16 v0, v38

    iput v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iget-object v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v38

    iget v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v40, v0

    const/16 v41, 0xc7

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    :goto_13
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "[ADVANCED OPP] : info.mId "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    iget v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, " content_uri : "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v42, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "[ADVANCED OPP] : update DB "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    goto/16 :goto_12

    :catchall_5
    move-exception v38

    :try_start_25
    monitor-exit v39

    throw v38
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_25} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_25} :catch_9
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    :cond_36
    const/16 v38, 0x1eb

    :try_start_26
    move/from16 v0, v38

    iput v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iget-object v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v38

    const/16 v40, 0x1f2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v38

    iget-object v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v40, v0

    iget-object v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v33

    iget-object v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v38

    iget v0, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v40, v0

    const/16 v41, 0x1eb

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    goto/16 :goto_13

    :cond_38
    :try_start_27
    monitor-exit v39
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27 .. :try_end_27} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_27} :catch_9
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    goto/16 :goto_8

    :cond_39
    :try_start_28
    const-string/jumbo v39, "BtOppObexClient"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Response error code is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_c

    const/16 v34, 0x1ef

    const/16 v39, 0xcf

    move/from16 v0, v32

    move/from16 v1, v39

    if-ne v0, v1, :cond_3a

    const/16 v34, 0x196

    :cond_3a
    const/16 v39, 0xc3

    move/from16 v0, v32

    move/from16 v1, v39

    if-eq v0, v1, :cond_3b

    const/16 v39, 0xc6

    move/from16 v0, v32

    move/from16 v1, v39

    if-ne v0, v1, :cond_e

    :cond_3b
    const/16 v34, 0x193

    goto/16 :goto_9

    :cond_3c
    const/16 v34, 0x1f1

    goto/16 :goto_9

    :catch_c
    move-exception v8

    const-string/jumbo v39, "BtOppObexClient"

    const-string/jumbo v40, "Error when closing stream after send"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    cmp-long v39, v26, v40

    if-eqz v39, :cond_10

    const/16 v34, 0x193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    goto/16 :goto_a

    :cond_3d
    :goto_14
    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get10(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v38

    if-nez v38, :cond_46

    if-eqz v20, :cond_46

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    cmp-long v38, v26, v38

    if-eqz v38, :cond_46

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_3e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    :cond_3e
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_3f

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "transmit data"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    const/16 v38, 0x0

    move/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v5, v6, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v30

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_40

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "OPP client read buffer"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/16 v38, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v30

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_41

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "OPP client writebuffer"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v32

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_42

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Response code is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const/16 v38, 0x90

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_43

    const/16 v38, 0xa0

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_43

    const/16 v20, 0x0

    goto/16 :goto_14

    :cond_43
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v26, v26, v38

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_44

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Sending file position = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " readLength "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " bytes took "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v36

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " ms"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const-wide/16 v38, 0x64

    mul-long v38, v38, v26

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    div-long v24, v38, v40

    cmp-long v38, v24, v28

    if-gtz v38, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    move/from16 v38, v0

    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3d

    :cond_45
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v38, "current_bytes"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide/from16 v28, v24

    goto/16 :goto_14

    :cond_46
    const/16 v38, 0xc3

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_47

    const/16 v38, 0xc6

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_50

    :cond_47
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->auditLogForMdm(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_48

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Remote reject file "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " length "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_29} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_29 .. :try_end_29} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_29 .. :try_end_29} :catch_9
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    :cond_48
    const/16 v34, 0x193

    :cond_49
    :goto_15
    if-eqz v5, :cond_4a

    :try_start_2a
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_2a} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2a} :catch_9
    .catchall {:try_start_2a .. :try_end_2a} :catchall_4

    :cond_4a
    :goto_16
    if-eqz v22, :cond_4b

    :try_start_2b
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v38

    const/16 v39, 0x1f2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    :cond_4c
    if-nez v14, :cond_4e

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v32

    const/16 v38, -0x1

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_59

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_4d

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Get response code "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/16 v38, 0xa0

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_4e

    sget-boolean v38, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    if-eqz v38, :cond_56

    :cond_4e
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    if-eqz v17, :cond_4f

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_4f
    if-eqz v23, :cond_17

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_d

    goto/16 :goto_c

    :catch_d
    move-exception v8

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "Error when closing stream after send"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    cmp-long v38, v26, v38

    if-eqz v38, :cond_17

    const/16 v34, 0x193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    goto/16 :goto_c

    :cond_50
    const/16 v38, 0xcf

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_52

    :try_start_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->auditLogForMdm(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_51

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Remote reject file type "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    const/16 v34, 0x196

    goto/16 :goto_15

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get10(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v38

    if-nez v38, :cond_55

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    cmp-long v38, v26, v38

    if-nez v38, :cond_55

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->auditLogForMdm(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v38

    if-eqz v38, :cond_53

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "SendFile finished send out file name : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v38

    if-eqz v38, :cond_54

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "SendFile finished send out file length : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_15

    :cond_55
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->auditLogForMdm(Ljava/lang/String;)V

    const/4 v14, 0x1

    const/16 v34, 0x1ea

    invoke-virtual/range {v23 .. v23}, Ljavax/obex/ClientOperation;->abort()V

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get0()Z

    move-result v38

    if-eqz v38, :cond_49

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "SendFile interrupted when send out file "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " at "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " of "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :catch_e
    move-exception v8

    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Error when closing buffer input stream : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_2c} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2c .. :try_end_2c} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c .. :try_end_2c} :catch_9
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    goto/16 :goto_16

    :cond_56
    :try_start_2d
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Response error code is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_d

    const/16 v34, 0x1ef

    const/16 v38, 0xcf

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_57

    const/16 v34, 0x196

    :cond_57
    const/16 v38, 0xc3

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_58

    const/16 v38, 0xc6

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_4e

    :cond_58
    const/16 v34, 0x193

    goto/16 :goto_17

    :cond_59
    const/16 v34, 0x1f1

    goto/16 :goto_17

    :cond_5a
    :try_start_2e
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Response error code is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_a

    const/16 v34, 0x1ef

    const/16 v38, 0xcf

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_5b

    const/16 v34, 0x196

    :cond_5b
    const/16 v38, 0xc3

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_5c

    const/16 v38, 0xc6

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_25

    :cond_5c
    const/16 v34, 0x193

    goto/16 :goto_f

    :cond_5d
    const/16 v34, 0x1f1

    goto/16 :goto_f

    :cond_5e
    :try_start_2f
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Response error code is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_8

    const/16 v34, 0x1ef

    const/16 v38, 0xcf

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_5f

    const/16 v34, 0x196

    :cond_5f
    const/16 v38, 0xc3

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_60

    const/16 v38, 0xc6

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_20

    :cond_60
    const/16 v34, 0x193

    goto/16 :goto_e

    :cond_61
    const/16 v34, 0x1f1

    goto/16 :goto_e

    :cond_62
    :try_start_30
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Response error code is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_5

    const/16 v34, 0x1ef

    const/16 v38, 0xcf

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_63

    const/16 v34, 0x196

    :cond_63
    const/16 v38, 0xc3

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_64

    const/16 v38, 0xc6

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_1b

    :cond_64
    const/16 v34, 0x193

    goto/16 :goto_d

    :cond_65
    const/16 v34, 0x1f1

    goto/16 :goto_d

    :cond_66
    :try_start_31
    const-string/jumbo v38, "BtOppObexClient"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Response error code is "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_f

    const/16 v34, 0x1ef

    const/16 v38, 0xcf

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_67

    const/16 v34, 0x196

    :cond_67
    const/16 v38, 0xc3

    move/from16 v0, v32

    move/from16 v1, v38

    if-eq v0, v1, :cond_68

    const/16 v38, 0xc6

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_15

    :cond_68
    const/16 v34, 0x193

    goto/16 :goto_b

    :cond_69
    const/16 v34, 0x1f1

    goto/16 :goto_b

    :catch_f
    move-exception v8

    const-string/jumbo v38, "BtOppObexClient"

    const-string/jumbo v39, "Error when closing stream after send"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v38, v0

    cmp-long v38, v26, v38

    if-eqz v38, :cond_17

    const/16 v34, 0x193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    goto/16 :goto_c

    :cond_6a
    :try_start_32
    const-string/jumbo v39, "BtOppObexClient"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Response error code is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_10

    const/16 v34, 0x1ef

    const/16 v39, 0xcf

    move/from16 v0, v32

    move/from16 v1, v39

    if-ne v0, v1, :cond_6b

    const/16 v34, 0x196

    :cond_6b
    const/16 v39, 0xc3

    move/from16 v0, v32

    move/from16 v1, v39

    if-eq v0, v1, :cond_6c

    const/16 v39, 0xc6

    move/from16 v0, v32

    move/from16 v1, v39

    if-ne v0, v1, :cond_2b

    :cond_6c
    const/16 v34, 0x193

    goto/16 :goto_10

    :cond_6d
    const/16 v34, 0x1f1

    goto/16 :goto_10

    :catch_10
    move-exception v8

    const-string/jumbo v39, "BtOppObexClient"

    const-string/jumbo v40, "Error when closing stream after send"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    cmp-long v39, v26, v40

    if-eqz v39, :cond_2d

    const/16 v34, 0x193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    goto/16 :goto_11
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    return-void
.end method

.method public interrupt()V
    .locals 5

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get16(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BtOppObexClient"

    const-string/jumbo v3, "Interrupted when waitingForRemote"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v2}, Ljavax/obex/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "BtOppObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTransport.close error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "acquire partial WakeLock"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get10(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect(I)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get10(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Client thread was interrupted (1), exiting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3, v7}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set5(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "Client thread waiting for next share, sleep for 500"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Client thread was interrupted (2), exiting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get3()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "release partial WakeLock"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    iput v7, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get11(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->disableP2p()V

    :cond_7
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3, v6}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set3(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->removeP2pConfirm(Z)V

    :cond_8
    return-void
.end method
