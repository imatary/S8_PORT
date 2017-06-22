.class final Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;
.super Ljava/lang/Object;
.source "LongestAxisMedianCut.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/imaging/palette/ColorGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/imaging/palette/ColorGroup;

    check-cast p2, Lorg/apache/commons/imaging/palette/ColorGroup;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;->compare(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;)I
    .locals 2

    iget v0, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    iget v1, p2, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/apache/commons/imaging/palette/ColorGroup;->diffTotal:I

    iget v1, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->diffTotal:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    iget v1, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
