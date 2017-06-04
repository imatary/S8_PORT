.class Lcom/amap/api/mapcore2d/q;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/q$a;
    }
.end annotation


# instance fields
.field protected final a:[Lcom/amap/api/mapcore2d/q$a;

.field protected final b:I

.field protected final c:I

.field protected final d:[Lcom/amap/api/mapcore2d/q$a;

.field private e:Z

.field private f:J

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IIZJ)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/q;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/q;->f:J

    iput-object v2, p0, Lcom/amap/api/mapcore2d/q;->g:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/amap/api/mapcore2d/q;->h:Landroid/graphics/Path;

    iput p1, p0, Lcom/amap/api/mapcore2d/q;->b:I

    iput p2, p0, Lcom/amap/api/mapcore2d/q;->c:I

    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/q;->e:Z

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p4

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/q;->f:J

    iget v0, p0, Lcom/amap/api/mapcore2d/q;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/q;->b:I

    new-array v0, v0, [Lcom/amap/api/mapcore2d/q$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    iget v0, p0, Lcom/amap/api/mapcore2d/q;->c:I

    new-array v0, v0, [Lcom/amap/api/mapcore2d/q$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    iput-object v2, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/q;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->g:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/q;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/q;->g:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/q;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/q;->h:Landroid/graphics/Path;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/cf;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/amap/api/mapcore2d/q$1;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore2d/q$1;-><init>(Lcom/amap/api/mapcore2d/q;Ljava/util/List;)V

    new-instance v1, Lcom/amap/api/mapcore2d/o;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore2d/o;-><init>(Landroid/graphics/Bitmap$Config;)V

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/o;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/o;->a(Lcom/amap/api/mapcore2d/p;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/q;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->h:Landroid/graphics/Path;

    return-object v0
.end method

.method private d()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected a()I
    .locals 10

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/q;->c:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore2d/q;->b:I

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v0, v4

    move v3, v1

    :goto_2
    iget v0, p0, Lcom/amap/api/mapcore2d/q;->c:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    aput-object v2, v0, v3

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v0, v3

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/q$a;->d:J

    iget-wide v8, v2, Lcom/amap/api/mapcore2d/q$a;->d:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v0, v3

    iget-object v5, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    aput-object v2, v5, v3

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_4
    iget v3, p0, Lcom/amap/api/mapcore2d/q;->c:I

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v3, v3, v0

    iput-boolean v1, v3, Lcom/amap/api/mapcore2d/q$a;->c:Z

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->d:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/amap/api/mapcore2d/q$a;->e:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return v2

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method protected a(Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    :goto_1
    iget v3, p0, Lcom/amap/api/mapcore2d/q;->b:I

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/amap/api/mapcore2d/q$a;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/amap/api/mapcore2d/q$a;->c:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/amap/api/mapcore2d/q;->e:Z

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/q;->d()J

    move-result-wide v4

    iget-object v3, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v3, v3, v0

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/q$a;->f:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/q;->f:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v3, v0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/q$a;->c:Z

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v1, v1, v0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/q;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/mapcore2d/q$a;->d:J

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method protected declared-synchronized a([B[BZLjava/util/List;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BZ",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/cf;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, -0x1

    monitor-enter p0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/q;->b()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/q;->a()I

    move-result v1

    :cond_2
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/q$a;->g:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/q$a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/api/mapcore2d/q$a;->g:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-ne p3, v6, :cond_9

    if-eqz p1, :cond_9

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    sget v3, Lcom/amap/api/mapcore2d/y;->i:I

    sget v4, Lcom/amap/api/mapcore2d/y;->i:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, p4}, Lcom/amap/api/mapcore2d/q;->a(Landroid/graphics/Bitmap;Ljava/util/List;)V

    :cond_6
    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/q$a;->g:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/q$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v0, v1

    iput-object p5, v0, Lcom/amap/api/mapcore2d/q$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/q;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/q$a;->d:J

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/q;->e:Z

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/q;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/q$a;->f:J

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "BitmapManager"

    const-string/jumbo v4, "setBitmapData"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    if-eqz p2, :cond_5

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    array-length v4, p2

    invoke-static {p2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    const-string/jumbo v3, "BitmapManager"

    const-string/jumbo v4, "setBitmapData"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method protected a(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore2d/q;->b:I

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected b()I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/q;->b:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    new-instance v2, Lcom/amap/api/mapcore2d/q$a;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/q$a;-><init>(Lcom/amap/api/mapcore2d/q;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/amap/api/mapcore2d/q$a;->e:I

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/amap/api/mapcore2d/q$a;->c:Z

    if-nez v2, :cond_1

    if-gez v1, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected c()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/q;->b:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/q;->a:[Lcom/amap/api/mapcore2d/q$a;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/mapcore2d/q$a;->a:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    return-void
.end method
