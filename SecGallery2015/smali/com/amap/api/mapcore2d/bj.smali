.class Lcom/amap/api/mapcore2d/bj;
.super Ljava/lang/Object;
.source "MapServerUrl.java"


# static fields
.field private static b:Lcom/amap/api/mapcore2d/bj;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "http://tm.mapabc.com"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bj;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/mapcore2d/bj;
    .locals 2

    const-class v1, Lcom/amap/api/mapcore2d/bj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/bj;->b:Lcom/amap/api/mapcore2d/bj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/bj;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bj;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/bj;->b:Lcom/amap/api/mapcore2d/bj;

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/bj;->b:Lcom/amap/api/mapcore2d/bj;
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
.method public b()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const-string/jumbo v0, ""

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget v0, Lcom/amap/api/mapcore2d/y;->l:I

    if-ne v0, v4, :cond_0

    const-string/jumbo v0, "http://wprd01.is.autonavi.com"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "http://webrd01.is.autonavi.com"

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/amap/api/mapcore2d/y;->l:I

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "http://wprd02.is.autonavi.com"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http://webrd02.is.autonavi.com"

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/amap/api/mapcore2d/y;->l:I

    if-ne v0, v4, :cond_2

    const-string/jumbo v0, "http://wprd03.is.autonavi.com"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "http://webrd03.is.autonavi.com"

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/amap/api/mapcore2d/y;->l:I

    if-ne v0, v4, :cond_3

    const-string/jumbo v0, "http://wprd04.is.autonavi.com"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "http://webrd04.is.autonavi.com"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "http://mst01.is.autonavi.com"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "http://mst02.is.autonavi.com"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "http://mst03.is.autonavi.com"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "http://mst04.is.autonavi.com"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
