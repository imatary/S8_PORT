.class public Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;
.super Ljava/lang/Object;
.source "BluetoothPbapSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PbapSession"
.end annotation


# instance fields
.field public isWaitingAuthorization:Z

.field public mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

.field public mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field public mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field public mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field public mRemoteDeviceName:Ljava/lang/String;

.field public mServerSession:Ljavax/obex/ServerSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mServerSession:Ljavax/obex/ServerSession;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->isWaitingAuthorization:Z

    return-void
.end method

.method private declared-synchronized closeConnectionSocket()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "BluetoothPbapSessionManager"

    const-string/jumbo v2, "Close Connection Socket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized closeSession()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mServerSession:Ljavax/obex/ServerSession;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "BluetoothPbapSessionManager"

    const-string/jumbo v2, "Close Server Session error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized canStartSession()Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->isSessionStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->closeSession()V

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->closeConnectionSocket()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSessionStarted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mServerSession:Ljavax/obex/ServerSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
