.class final Landroid/icu/text/IdentifierInfo$1;
.super Ljava/lang/Object;
.source "IdentifierInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/IdentifierInfo;
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
        "Ljava/util/BitSet;",
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

    check-cast p1, Ljava/util/BitSet;

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/IdentifierInfo$1;->compare(Ljava/util/BitSet;Ljava/util/BitSet;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/BitSet;Ljava/util/BitSet;)I
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    sub-int v0, v3, v4

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    invoke-virtual {p2, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_0
    sub-int v0, v1, v2

    if-nez v0, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_0

    :cond_1
    return v0
.end method
