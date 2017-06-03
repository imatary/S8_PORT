.class final Landroid/icu/impl/StringRange$1;
.super Ljava/lang/Object;
.source "StringRange.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/StringRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[I>;"
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

    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/StringRange$1;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 5

    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p1, v1

    aget v4, p2, v1

    sub-int v0, v3, v4

    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v3, p1

    array-length v4, p2

    sub-int/2addr v3, v4

    return v3
.end method
