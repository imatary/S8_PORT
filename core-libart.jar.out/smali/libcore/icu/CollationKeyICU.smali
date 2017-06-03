.class public final Llibcore/icu/CollationKeyICU;
.super Ljava/text/CollationKey;
.source "CollationKeyICU.java"


# instance fields
.field private final key:Landroid/icu/text/CollationKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/CollationKey;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/CollationKey;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/text/CollationKey;)I
    .locals 3

    instance-of v1, p1, Llibcore/icu/CollationKeyICU;

    if-eqz v1, :cond_0

    check-cast p1, Llibcore/icu/CollationKeyICU;

    iget-object v0, p1, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    :goto_0
    iget-object v1, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    invoke-virtual {v1, v0}, Landroid/icu/text/CollationKey;->compareTo(Landroid/icu/text/CollationKey;)I

    move-result v1

    return v1

    :cond_0
    new-instance v0, Landroid/icu/text/CollationKey;

    invoke-virtual {p1}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Ljava/text/CollationKey;

    if-nez v2, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    invoke-virtual {v0}, Landroid/icu/text/CollationKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    invoke-virtual {v0}, Landroid/icu/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
