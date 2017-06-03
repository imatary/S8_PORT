.class final Landroid/icu/impl/coll/CollationWeights$WeightRange;
.super Ljava/lang/Object;
.source "CollationWeights.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationWeights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeightRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/coll/CollationWeights$WeightRange;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field end:J

.field length:I

.field start:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/coll/CollationWeights$WeightRange;)I
    .locals 5

    iget-wide v0, p0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    iget-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, -0x1

    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationWeights$WeightRange;->compareTo(Landroid/icu/impl/coll/CollationWeights$WeightRange;)I

    move-result v0

    return v0
.end method
