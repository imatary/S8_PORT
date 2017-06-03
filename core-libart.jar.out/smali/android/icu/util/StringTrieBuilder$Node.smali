.class abstract Landroid/icu/util/StringTrieBuilder$Node;
.super Ljava/lang/Object;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Node"
.end annotation


# instance fields
.field protected offset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getOffset()I
    .locals 1

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-nez v0, :cond_0

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    :cond_0
    return p1
.end method

.method public register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 0

    return-object p0
.end method

.method public abstract write(Landroid/icu/util/StringTrieBuilder;)V
.end method

.method public final writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V
    .locals 1

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-gez v0, :cond_1

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-lt v0, p2, :cond_0

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p3}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    :cond_1
    return-void
.end method
