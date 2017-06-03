.class final Ljava/lang/DexCache;
.super Ljava/lang/Object;
.source "DexCache.java"


# instance fields
.field private volatile dex:Lcom/android/dex/Dex;

.field private dexFile:J

.field location:Ljava/lang/String;

.field private numResolvedFields:I

.field private numResolvedMethods:I

.field private numResolvedTypes:I

.field private numStrings:I

.field private resolvedFields:J

.field private resolvedMethods:J

.field private resolvedTypes:J

.field private strings:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getDexNative()Lcom/android/dex/Dex;
.end method


# virtual methods
.method getDex()Lcom/android/dex/Dex;
    .locals 2

    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/lang/DexCache;->getDexNative()Lcom/android/dex/Dex;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method native getResolvedString(I)Ljava/lang/String;
.end method

.method native getResolvedType(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method native setResolvedString(ILjava/lang/String;)V
.end method

.method native setResolvedType(ILjava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method
