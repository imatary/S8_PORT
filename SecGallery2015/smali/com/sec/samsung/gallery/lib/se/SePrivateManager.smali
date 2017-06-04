.class public Lcom/sec/samsung/gallery/lib/se/SePrivateManager;
.super Ljava/lang/Object;
.source "SePrivateManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SePrivateManager"


# instance fields
.field private mListener:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;

.field private mPrivateModeBinder:Landroid/os/IBinder;

.field private mPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)Lcom/samsung/android/privatemode/SemPrivateModeManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mListener:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;

    return-object v0
.end method


# virtual methods
.method public getInstance(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/lib/se/SePrivateManager$1;-><init>(Lcom/sec/samsung/gallery/lib/se/SePrivateManager;)V

    invoke-static {p1, v0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;)Lcom/samsung/android/privatemode/SemPrivateModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    return-void
.end method

.method public getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPrivateStorageMounted(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isReady(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isPrivateModeReady(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mListener:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;

    return-void
.end method

.method public unregisterClient(Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;->mPrivateModeBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->unregisterListener(Landroid/os/IBinder;Z)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SePrivateManager"

    const-string/jumbo v1, "mPrivateModeBinder or mPrivateModeManager is null so can not unregister client"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
