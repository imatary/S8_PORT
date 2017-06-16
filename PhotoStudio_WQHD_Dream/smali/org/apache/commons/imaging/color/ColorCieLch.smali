.class public final Lorg/apache/commons/imaging/color/ColorCieLch;
.super Ljava/lang/Object;
.source "ColorCieLch.java"


# static fields
.field public static final BLACK:Lorg/apache/commons/imaging/color/ColorCieLch;

.field public static final BLUE:Lorg/apache/commons/imaging/color/ColorCieLch;

.field public static final GREEN:Lorg/apache/commons/imaging/color/ColorCieLch;

.field public static final RED:Lorg/apache/commons/imaging/color/ColorCieLch;

.field public static final WHITE:Lorg/apache/commons/imaging/color/ColorCieLch;


# instance fields
.field public final C:D

.field public final H:D

.field public final L:D


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-wide/16 v2, 0x0

    new-instance v1, Lorg/apache/commons/imaging/color/ColorCieLch;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorCieLch;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorCieLch;->BLACK:Lorg/apache/commons/imaging/color/ColorCieLch;

    new-instance v5, Lorg/apache/commons/imaging/color/ColorCieLch;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide v10, 0x4072900000000000L    # 297.0

    move-wide v8, v2

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/imaging/color/ColorCieLch;-><init>(DDD)V

    sput-object v5, Lorg/apache/commons/imaging/color/ColorCieLch;->WHITE:Lorg/apache/commons/imaging/color/ColorCieLch;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorCieLch;

    const-wide v2, 0x404a800000000000L    # 53.0

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    const-wide v6, 0x4050c00000000000L    # 67.0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorCieLch;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorCieLch;->RED:Lorg/apache/commons/imaging/color/ColorCieLch;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorCieLch;

    const-wide/high16 v2, 0x4056000000000000L    # 88.0

    const-wide v4, -0x3faa800000000000L    # -86.0

    const-wide v6, 0x4054c00000000000L    # 83.0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorCieLch;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorCieLch;->GREEN:Lorg/apache/commons/imaging/color/ColorCieLch;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorCieLch;

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    const-wide v4, 0x4053c00000000000L    # 79.0

    const-wide/high16 v6, -0x3fa5000000000000L    # -108.0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorCieLch;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorCieLch;->BLUE:Lorg/apache/commons/imaging/color/ColorCieLch;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->L:D

    iput-wide p3, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->C:D

    iput-wide p5, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->H:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/imaging/color/ColorCieLch;

    iget-wide v4, v0, Lorg/apache/commons/imaging/color/ColorCieLch;->C:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->C:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-wide v4, v0, Lorg/apache/commons/imaging/color/ColorCieLch;->H:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->H:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-wide v4, v0, Lorg/apache/commons/imaging/color/ColorCieLch;->L:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->L:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->L:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v0, v4

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->C:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->H:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{L: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->L:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", C: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->C:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", H: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->H:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
