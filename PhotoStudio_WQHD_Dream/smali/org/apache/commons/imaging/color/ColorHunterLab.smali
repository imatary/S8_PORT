.class public final Lorg/apache/commons/imaging/color/ColorHunterLab;
.super Ljava/lang/Object;
.source "ColorHunterLab.java"


# static fields
.field public static final BLACK:Lorg/apache/commons/imaging/color/ColorHunterLab;

.field public static final BLUE:Lorg/apache/commons/imaging/color/ColorHunterLab;

.field public static final GREEN:Lorg/apache/commons/imaging/color/ColorHunterLab;

.field public static final RED:Lorg/apache/commons/imaging/color/ColorHunterLab;

.field public static final WHITE:Lorg/apache/commons/imaging/color/ColorHunterLab;


# instance fields
.field public final L:D

.field public final a:D

.field public final b:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v2, 0x0

    new-instance v1, Lorg/apache/commons/imaging/color/ColorHunterLab;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorHunterLab;->BLACK:Lorg/apache/commons/imaging/color/ColorHunterLab;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorHunterLab;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide v4, -0x3feaa7ef9db22d0eL    # -5.336

    const-wide v6, 0x4015bb645a1cac08L    # 5.433

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorHunterLab;->WHITE:Lorg/apache/commons/imaging/color/ColorHunterLab;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorHunterLab;

    const-wide v2, 0x40470df3b645a1cbL    # 46.109

    const-wide v4, 0x4053bd916872b021L    # 78.962

    const-wide v6, 0x403dcb4395810625L    # 29.794

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorHunterLab;->RED:Lorg/apache/commons/imaging/color/ColorHunterLab;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorHunterLab;

    const-wide v2, 0x4055246a7ef9db23L    # 84.569

    const-wide v4, -0x3fadded916872b02L    # -72.518

    const-wide v6, 0x40496bc6a7ef9db2L    # 50.842

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorHunterLab;->GREEN:Lorg/apache/commons/imaging/color/ColorHunterLab;

    new-instance v1, Lorg/apache/commons/imaging/color/ColorHunterLab;

    const-wide v2, 0x403adeb851eb851fL    # 26.87

    const-wide v4, 0x405238a3d70a3d71L    # 72.885

    const-wide v6, -0x3f982276c8b43958L    # -190.923

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/imaging/color/ColorHunterLab;->BLUE:Lorg/apache/commons/imaging/color/ColorHunterLab;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    iput-wide p3, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    iput-wide p5, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

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

    check-cast v0, Lorg/apache/commons/imaging/color/ColorHunterLab;

    iget-wide v4, v0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-wide v4, v0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-wide v4, v0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v0, v4

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

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

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
