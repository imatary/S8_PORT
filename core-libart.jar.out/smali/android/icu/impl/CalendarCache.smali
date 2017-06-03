.class public Landroid/icu/impl/CalendarCache;
.super Ljava/lang/Object;
.source "CalendarCache.java"


# static fields
.field public static EMPTY:J

.field private static final primes:[I


# instance fields
.field private arraySize:I

.field private keys:[J

.field private pIndex:I

.field private size:I

.field private threshold:I

.field private values:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/CalendarCache;->primes:[I

    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Landroid/icu/impl/CalendarCache;->EMPTY:J

    return-void

    :array_0
    .array-data 4
        0x3d
        0x7f
        0x1fd
        0x3fd
        0x7f7
        0xffd
        0x1fff
        0x3ffd
        0x7fed
        0xfff1
        0x1ffff
        0x3fffb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    iput v0, p0, Landroid/icu/impl/CalendarCache;->size:I

    sget-object v0, Landroid/icu/impl/CalendarCache;->primes:[I

    iget v1, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->values:[J

    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    invoke-direct {p0, v0}, Landroid/icu/impl/CalendarCache;->makeArrays(I)V

    return-void
.end method

.method private final findIndex(J)I
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->hash(J)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->values:[J

    aget-wide v2, v2, v1

    sget-wide v4, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->hash2(J)I

    move-result v0

    :cond_0
    add-int v2, v1, v0

    iget v3, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    rem-int v1, v2, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final hash(J)I
    .locals 7

    const-wide/16 v2, 0x3dcd

    mul-long/2addr v2, p1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v0, v2

    if-gez v0, :cond_0

    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private final hash2(J)I
    .locals 5

    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    add-int/lit8 v1, v1, -0x2

    int-to-long v2, v1

    rem-long v2, p1, v2

    long-to-int v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private makeArrays(I)V
    .locals 6

    new-array v1, p1, [J

    iput-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    new-array v1, p1, [J

    iput-object v1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    sget-wide v2, Landroid/icu/impl/CalendarCache;->EMPTY:J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/CalendarCache;->size:I

    return-void
.end method

.method private rehash()V
    .locals 8

    iget v2, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    iget-object v3, p0, Landroid/icu/impl/CalendarCache;->values:[J

    iget v4, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    sget-object v5, Landroid/icu/impl/CalendarCache;->primes:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    sget-object v4, Landroid/icu/impl/CalendarCache;->primes:[I

    iget v5, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    aget v4, v4, v5

    iput v4, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    :goto_0
    const/4 v4, 0x0

    iput v4, p0, Landroid/icu/impl/CalendarCache;->size:I

    iget v4, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    invoke-direct {p0, v4}, Landroid/icu/impl/CalendarCache;->makeArrays(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-wide v4, v3, v0

    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    aget-wide v4, v1, v0

    aget-wide v6, v3, v0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v4, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized get(J)J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/CalendarCache;->values:[J

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->findIndex(J)I

    move-result v1

    aget-wide v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(JJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/icu/impl/CalendarCache;->size:I

    iget v2, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Landroid/icu/impl/CalendarCache;->rehash()V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->findIndex(J)I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    aput-wide p3, v1, v0

    iget v1, p0, Landroid/icu/impl/CalendarCache;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/CalendarCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
