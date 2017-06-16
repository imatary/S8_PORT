.class final Lorg/apache/commons/imaging/common/RationalNumber$Option;
.super Ljava/lang/Object;
.source "RationalNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/RationalNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Option"
.end annotation


# instance fields
.field public final error:D

.field public final rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/common/RationalNumber;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    iput-wide p2, p0, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    return-void
.end method

.method public static factory(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$Option;
    .locals 5

    new-instance v0, Lorg/apache/commons/imaging/common/RationalNumber$Option;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lorg/apache/commons/imaging/common/RationalNumber$Option;-><init>(Lorg/apache/commons/imaging/common/RationalNumber;D)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/RationalNumber;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
