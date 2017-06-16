.class public Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;
.super Ljava/lang/Object;
.source "BluetoothPbapAuthenticator.java"

# interfaces
.implements Ljavax/obex/Authenticator;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapAuthenticator"


# instance fields
.field private mAuthCancelled:Z

.field private final mCallback:Landroid/os/Handler;

.field private mChallenged:Z

.field private final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mCallback:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    return-void
.end method

.method private waitUserConfirmation()V
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mCallback:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x138b

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "BluetoothPbapAuthenticator"

    const-string/jumbo v3, "Interrupted while waiting on isChalled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->waitUserConfirmation()V

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/obex/PasswordAuthentication;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljavax/obex/PasswordAuthentication;-><init>([B[B)V

    return-object v0

    :cond_0
    return-object v2
.end method

.method public onAuthenticationResponse([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized setCancelled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setChallenged(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setSessionKey(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
