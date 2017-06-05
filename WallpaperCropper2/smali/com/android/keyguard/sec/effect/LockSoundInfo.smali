.class public Lcom/android/keyguard/sec/effect/LockSoundInfo;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final TYPE_PATH:I = 0x1

.field private static final TYPE_RESOURCE:I = 0x2


# instance fields
.field mPathLock:Ljava/lang/String;

.field mPathUnlock:Ljava/lang/String;

.field mResIdLock:I

.field mResIdUnlock:I

.field mTypeLock:I

.field mTypeUnlock:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LockSoundInfo"

    sput-object v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    iput p1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    iput p2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    iput p1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    iput-object p2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    iput p2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    return-void
.end method

.method private getPathLock()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    return-object v0
.end method

.method private getPathUnlock()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    return-object v0
.end method

.method private getResIdLock()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    return v0
.end method

.method private getResIdUnlock()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    return v0
.end method

.method private isLockSoundTypePath()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private isUnlockSoundTypePath()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public reloadSoundIdLock(Landroid/content/Context;ILandroid/media/SoundPool;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->isLockSoundTypePath()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->getResIdLock()I

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    :goto_0
    if-nez v2, :cond_8

    :cond_0
    sget-object v1, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to load lock sound from resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    :goto_1
    move p2, v0

    :cond_1
    return p2

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->getPathLock()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_2
    move-object v5, v0

    move v0, v1

    move-object v1, v5

    if-nez v1, :cond_6

    :cond_3
    sget-object v2, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to load lock sound from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_4
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {p3, p2}, Landroid/media/SoundPool;->unload(I)Z

    invoke-virtual {p3, v0, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_7
    invoke-virtual {p3, p2}, Landroid/media/SoundPool;->unload(I)Z

    invoke-virtual {p3, p1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method public reloadSoundIdUnlock(Landroid/content/Context;ILandroid/media/SoundPool;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->isUnlockSoundTypePath()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->getResIdUnlock()I

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    :goto_0
    if-nez v2, :cond_8

    :cond_0
    sget-object v1, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to load unlock sound from resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    :goto_1
    move p2, v0

    :cond_1
    return p2

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->getPathUnlock()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_2
    move-object v5, v0

    move v0, v1

    move-object v1, v5

    if-nez v1, :cond_6

    :cond_3
    sget-object v2, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to load unlock sound from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_4
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {p3, p2}, Landroid/media/SoundPool;->unload(I)Z

    invoke-virtual {p3, v0, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "unlock_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_7
    invoke-virtual {p3, p2}, Landroid/media/SoundPool;->unload(I)Z

    invoke-virtual {p3, p1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_0

    goto :goto_1
.end method
