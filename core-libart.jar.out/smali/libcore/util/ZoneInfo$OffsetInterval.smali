.class Llibcore/util/ZoneInfo$OffsetInterval;
.super Ljava/lang/Object;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OffsetInterval"
.end annotation


# instance fields
.field private final endWallTimeSeconds:I

.field private final isDst:I

.field private final startWallTimeSeconds:I

.field private final totalOffsetSeconds:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llibcore/util/ZoneInfo$OffsetInterval;->startWallTimeSeconds:I

    iput p2, p0, Llibcore/util/ZoneInfo$OffsetInterval;->endWallTimeSeconds:I

    iput p3, p0, Llibcore/util/ZoneInfo$OffsetInterval;->isDst:I

    iput p4, p0, Llibcore/util/ZoneInfo$OffsetInterval;->totalOffsetSeconds:I

    return-void
.end method

.method public static create(Llibcore/util/ZoneInfo;I)Llibcore/util/ZoneInfo$OffsetInterval;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, -0x1

    if-lt p1, v7, :cond_0

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    move-result-object v6

    array-length v6, v6

    if-lt p1, v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    return-object v6

    :cond_1
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get2(Llibcore/util/ZoneInfo;)I

    move-result v6

    div-int/lit16 v2, v6, 0x3e8

    if-ne p1, v7, :cond_2

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    move-result-object v6

    aget-wide v6, v6, v8

    invoke-static {v6, v7, v2}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    move-result v0

    new-instance v6, Llibcore/util/ZoneInfo$OffsetInterval;

    const/high16 v7, -0x80000000

    invoke-direct {v6, v7, v0, v8, v2}, Llibcore/util/ZoneInfo$OffsetInterval;-><init>(IIII)V

    return-object v6

    :cond_2
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get4(Llibcore/util/ZoneInfo;)[B

    move-result-object v6

    aget-byte v6, v6, p1

    and-int/lit16 v5, v6, 0xff

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    move-result-object v6

    aget v6, v6, v5

    add-int v4, v6, v2

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_3

    const v0, 0x7fffffff

    :goto_0
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get0(Llibcore/util/ZoneInfo;)[B

    move-result-object v6

    aget-byte v1, v6, v5

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    move-result-object v6

    aget-wide v6, v6, p1

    invoke-static {v6, v7, v4}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    move-result v3

    new-instance v6, Llibcore/util/ZoneInfo$OffsetInterval;

    invoke-direct {v6, v3, v0, v1, v4}, Llibcore/util/ZoneInfo$OffsetInterval;-><init>(IIII)V

    return-object v6

    :cond_3
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    aget-wide v6, v6, v7

    invoke-static {v6, v7, v4}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public containsWallTime(J)Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Llibcore/util/ZoneInfo$OffsetInterval;->startWallTimeSeconds:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Llibcore/util/ZoneInfo$OffsetInterval;->endWallTimeSeconds:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getEndWallTimeSeconds()J
    .locals 2

    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->endWallTimeSeconds:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getIsDst()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->isDst:I

    return v0
.end method

.method public getStartWallTimeSeconds()J
    .locals 2

    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->startWallTimeSeconds:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalOffsetSeconds()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$OffsetInterval;->totalOffsetSeconds:I

    return v0
.end method
