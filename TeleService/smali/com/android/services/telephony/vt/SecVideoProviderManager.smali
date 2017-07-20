.class public Lcom/android/services/telephony/vt/SecVideoProviderManager;
.super Ljava/lang/Object;
.source "SecVideoProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/vt/SecVideoProviderManager$1;,
        Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;


# instance fields
.field private mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

.field private mContext:Landroid/content/Context;

.field private mProviderType:I

.field private mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

.field private final mSecVideoProviderCallbackListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoProviderCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mProviderType:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProviderCallbackListener:Ljava/util/Set;

    new-instance v0, Lcom/android/services/telephony/vt/SecVideoProviderManager$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/vt/SecVideoProviderManager$1;-><init>(Lcom/android/services/telephony/vt/SecVideoProviderManager;)V

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mVideoProviderCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addSecVideoProviderCallbackListener(Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProviderCallbackListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProviderCallbackListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSupportCSVT()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    if-nez v1, :cond_2

    const-string/jumbo v1, "PSTNVT-SecVideoProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create - new instance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v1, Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/vt/SecVideoProviderManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    :goto_0
    sget-object v1, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    iput v0, v1, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mProviderType:I

    sget-object v1, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v1}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->createSecVideoProvider()V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "PSTNVT-SecVideoProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create - alrady created : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public static destroy()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PSTNVT-SecVideoProviderManager"

    const-string/jumbo v1, "destroy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->destroyBaseVideoProvider()V

    sget-object v0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->clearSecVideoProviderCallbackListener()V

    :cond_0
    sput-object v3, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    return-void
.end method

.method public static getInstance()Lcom/android/services/telephony/vt/SecVideoProviderManager;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sInstance:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    return-object v0
.end method

.method private removeSecVideoProviderCallbackListener(Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProviderCallbackListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public changeRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->changeRotation(I)V

    :cond_0
    return-void
.end method

.method public clearSecVideoProviderCallbackListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProviderCallbackListener:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProviderCallbackListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method public connectBaseVideoProvider(Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->addSecVideoProviderCallbackListener(Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;)V

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "PSTNVT-SecVideoProviderManager"

    const-string/jumbo v1, "connectBaseVideoProvider"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->initialize(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mVideoProviderCallback:Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->connect(Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;)V

    :cond_1
    return-void
.end method

.method public createBaseVideoProvider(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/services/telephony/vt/CSVideoProvider;

    invoke-direct {v0}, Lcom/android/services/telephony/vt/CSVideoProvider;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->getPstnVideoProvider()Lcom/android/services/telephony/vt/BaseVideoProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "PSTNVT-SecVideoProviderManager"

    const-string/jumbo v1, "createBaseVideoProvider"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->getPstnVideoProvider()Lcom/android/services/telephony/vt/BaseVideoProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->getPstnVideoProvider()Lcom/android/services/telephony/vt/BaseVideoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/vt/SecVideoProvider;->setPstnVideoProvider(Lcom/android/services/telephony/vt/BaseVideoProvider;)V

    :cond_2
    return-void
.end method

.method public createSecVideoProvider()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/services/telephony/vt/SecVideoProvider;

    invoke-direct {v0}, Lcom/android/services/telephony/vt/SecVideoProvider;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    :cond_0
    return-void
.end method

.method public destroyBaseVideoProvider()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->destroy()V

    iput-object v1, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    :cond_0
    return-void
.end method

.method public disconnectBaseVideoProvider(Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->removeSecVideoProviderCallbackListener(Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;)V

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PSTNVT-SecVideoProviderManager"

    const-string/jumbo v1, "disconnectBaseVideoProvider"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->disconnect()V

    :cond_0
    return-void
.end method

.method public getSecVideoProvider()Lcom/android/services/telephony/vt/SecVideoProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    return-object v0
.end method

.method public notifySecVideoCallCallback(Landroid/os/Bundle;)V
    .locals 3

    iget-object v2, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mSecVideoProviderCallbackListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;->onVideoProviderCallbackReceived(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/BaseVideoProvider;->sendDTMF(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startRecord(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/services/telephony/vt/BaseVideoProvider;->startRecord(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public startVideoService()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->startService()V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->stopRecord()V

    :cond_0
    return-void
.end method

.method public stopVideoService()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager;->mBaseVideoProvider:Lcom/android/services/telephony/vt/BaseVideoProvider;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/BaseVideoProvider;->stopService()V

    :cond_0
    return-void
.end method
