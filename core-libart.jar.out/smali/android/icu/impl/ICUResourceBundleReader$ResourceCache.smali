.class final Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final NEXT_BITS:I = 0x6

.field private static final ROOT_BITS:I = 0x7

.field private static final SIMPLE_LENGTH:I = 0x20


# instance fields
.field private keys:[I

.field private length:I

.field private levelBitsList:I

.field private maxOffsetBits:I

.field private rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

.field private values:[Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(I)Z
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->storeDirectly(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 7

    const/16 v6, 0x20

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v3, v6, [I

    iput-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    new-array v3, v6, [Ljava/lang/Object;

    iput-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    sget-boolean v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    const/16 v2, 0x1c

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    :goto_0
    const v2, 0x7ffffff

    if-gt p1, v2, :cond_2

    shl-int/lit8 p1, p1, 0x1

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    add-int/lit8 v0, v2, 0x2

    if-gt v0, v5, :cond_3

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    :goto_1
    return-void

    :cond_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, -0x3

    or-int/lit8 v2, v2, 0x30

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    goto :goto_1

    :cond_4
    iput v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    add-int/lit8 v0, v0, -0x7

    const/4 v1, 0x4

    :goto_2
    if-gt v0, v4, :cond_5

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    shl-int v3, v0, v1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    goto :goto_1

    :cond_5
    const/16 v2, 0x9

    if-ge v0, v2, :cond_6

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    add-int/lit8 v3, v0, -0x3

    or-int/lit8 v3, v3, 0x30

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    goto :goto_1

    :cond_6
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    shl-int v3, v4, v1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    add-int/lit8 v0, v0, -0x6

    add-int/lit8 v1, v1, 0x4

    goto :goto_2
.end method

.method private findSimple(I)I
    .locals 6

    const/4 v3, 0x0

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    :goto_0
    sub-int v4, v1, v3

    const/16 v5, 0x8

    if-le v4, v5, :cond_2

    add-int v4, v3, v1

    div-int/lit8 v2, v4, 0x2

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aget v4, v4, v2

    if-ge p1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aget v0, v4, v3

    if-ge p1, v0, :cond_3

    not-int v4, v3

    return v4

    :cond_3
    if-ne p1, v0, :cond_1

    return v3

    :cond_4
    not-int v4, v3

    return v4
.end method

.method private makeKey(I)I
    .locals 4

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap3(I)I

    move-result v2

    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    shl-int v3, v0, v3

    or-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    aget-object v0, p0, p1

    instance-of v1, v0, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-boolean v1, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    const/16 v1, 0x18

    if-lt p3, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    :goto_1
    aput-object v1, p0, p1

    return-object p2

    :cond_4
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static storeDirectly(I)Z
    .locals 1

    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized get(I)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap3(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_1
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    if-ltz v2, :cond_5

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->findSimple(I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    aget-object v1, v2, v0

    :cond_2
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :cond_3
    monitor-exit p0

    return-object v1

    :cond_4
    monitor-exit p0

    return-object v4

    :cond_5
    :try_start_2
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->get(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    monitor-exit p0

    return-object v4
.end method

.method declared-synchronized putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 7

    const/16 v6, 0x20

    monitor-enter p0

    :try_start_0
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    if-ltz v2, :cond_5

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->findSimple(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    invoke-static {v2, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    if-ge v2, v6, :cond_3

    not-int v1, v1

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    sub-int/2addr v5, v1

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    sub-int/2addr v5, v1

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aput p1, v2, v1

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    invoke-static {p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->storeDirectly(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p2

    :goto_0
    aput-object v2, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_3
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;-><init>(II)V

    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_4

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aget v3, v3, v0

    invoke-direct {p0, v3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    move-result v3

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    const/4 v2, -0x1

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    :cond_5
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    move-result v3

    invoke-virtual {v2, v3, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method
