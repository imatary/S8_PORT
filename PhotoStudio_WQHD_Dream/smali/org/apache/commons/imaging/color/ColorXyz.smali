.class public final Lorg/apache/commons/imaging/color/ColorXyz;
.super Ljava/lang/Object;
.source "ColorXyz.java"


# static fields
.field public static final BLACK:Lorg/apache/commons/imaging/color/ColorXyz;

.field public static final BLUE:Lorg/apache/commons/imaging/color/ColorXyz;

.field public static final GREEN:Lorg/apache/commons/imaging/color/ColorXyz;

.field public static final RED:Lorg/apache/commons/imaging/color/ColorXyz;

.field public static final WHITE:Lorg/apache/commons/imaging/color/ColorXyz;


# instance fields
.field public final X:D

.field public final Y:D

.field public final Z:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide v8, 0x4057c33333333333L    # 95.05

    const-wide/16 v2, 0x0

    new-instance v1, Lorg/apache/commons/imaging/color/ColorXyz;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorXyz;->BLACK:Lorg/apache/commons/imaging/color/ColorXyz;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorXyz;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide v6, 0x405b39999999999aL    # 108.9

    move-wide v2, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorXyz;->WHITE:Lorg/apache/commons/imaging/color/ColorXyz;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorXyz;

    const-wide v2, 0x40449eb851eb851fL    # 41.24

    const-wide v4, 0x4035428f5c28f5c3L    # 21.26

    const-wide v6, 0x3ffee147ae147ae1L    # 1.93

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorXyz;->RED:Lorg/apache/commons/imaging/color/ColorXyz;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorXyz;

    const-wide v2, 0x4041e147ae147ae1L    # 35.76

    const-wide v4, 0x4051e147ae147ae1L    # 71.52

    const-wide v6, 0x4027d70a3d70a3d7L    # 11.92

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorXyz;->GREEN:Lorg/apache/commons/imaging/color/ColorXyz;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorXyz;

    const-wide v2, 0x40320ccccccccccdL    # 18.05

    const-wide v4, 0x401ce147ae147ae1L    # 7.22

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorXyz;->BLUE:Lorg/apache/commons/imaging/color/ColorXyz;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iput-wide p3, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iput-wide p5, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

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

    check-cast v0, Lorg/apache/commons/imaging/color/ColorXyz;

    iget-wide v4, v0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-wide v4, v0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-wide v4, v0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v0, v4

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

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

    const-string v1, "{X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
