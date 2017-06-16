.class public Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;
.super Ljava/lang/Object;
.source "BluetoothPbapSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_SESSIONS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapSessionManager"

.field private static sInstance:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;


# instance fields
.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init()Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;
    .locals 2

    const-class v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->sInstance:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    invoke-direct {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;-><init>()V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->sInstance:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    :cond_0
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->sInstance:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized canStartSession(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothPbapSessionManager"

    const-string/jumbo v3, "canStartSession: device not found..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->canStartSession()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized closeAllConnections(ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->close()V

    :cond_2
    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    monitor-exit p0

    return-void
.end method

.method public closeSession(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->close()V

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    return v2
.end method

.method public declared-synchronized createSession(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    invoke-direct {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;-><init>()V

    iput-object p2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    iput-object p1, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mRemoteDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getConnectedDevices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-eqz p1, :cond_0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getDisplayName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-nez v1, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mRemoteDeviceName:Ljava/lang/String;

    return-object v2
.end method

.method public getFirstClient()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getInstance()Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->sInstance:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    return-object v0
.end method

.method public getNumberOfConnections()I
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNumberOfConnections : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public hasMoreAvailableSessions()Z
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasMoreAvailableSessions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartedSessions()Z
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->isSessionStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized isSessionStarted(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->isSessionStarted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isWaitingAuthorization(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-boolean v2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->isWaitingAuthorization:Z

    return v2
.end method

.method public notifyAuthCancelled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v3

    :try_start_0
    iget-object v2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    iget-object v2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public notifyAuthKeyInput(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v3

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setSessionKey(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    iget-object v2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setTrust(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    move-result v2

    return v2
.end method

.method public setWaitingAuthorization(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iput-boolean p2, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->isWaitingAuthorization:Z

    const/4 v2, 0x1

    return v2
.end method

.method public declared-synchronized startSession(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;Landroid/os/Handler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    invoke-direct {v3, p3, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v3, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-direct {v3, p2, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    iput-object v3, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    iget-object v3, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    iget-object v3, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    new-instance v2, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v3, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    new-instance v3, Ljavax/obex/ServerSession;

    iget-object v4, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v5, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-direct {v3, v2, v4, v5}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v3, v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->mServerSession:Ljavax/obex/ServerSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized stopSession(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->getKey(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothPbapSessionManager"

    const-string/jumbo v3, "stopSession: session not found..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v4

    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothPbapSessionManager"

    const-string/jumbo v3, "stopSession: closing..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager$PbapSession;->close()V

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
