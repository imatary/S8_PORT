.class public Landroid/icu/impl/Row;
.super Ljava/lang/Object;
.source "Row.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Row$R2;,
        Landroid/icu/impl/Row$R3;,
        Landroid/icu/impl/Row$R4;,
        Landroid/icu/impl/Row$R5;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C0:",
        "Ljava/lang/Object;",
        "C1:",
        "Ljava/lang/Object;",
        "C2:",
        "Ljava/lang/Object;",
        "C3:",
        "Ljava/lang/Object;",
        "C4:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/impl/Row",
        "<TC0;TC1;TC2;TC3;TC4;>;>;"
    }
.end annotation


# instance fields
.field protected volatile frozen:Z

.field protected items:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;)",
            "Landroid/icu/impl/Row$R2",
            "<TC0;TC1;>;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/Row$R2;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Row$R2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;)",
            "Landroid/icu/impl/Row$R3",
            "<TC0;TC1;TC2;>;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/Row$R3;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Row$R3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            "C3:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;TC3;)",
            "Landroid/icu/impl/Row$R4",
            "<TC0;TC1;TC2;TC3;>;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/Row$R4;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/icu/impl/Row$R4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R5;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C0:",
            "Ljava/lang/Object;",
            "C1:",
            "Ljava/lang/Object;",
            "C2:",
            "Ljava/lang/Object;",
            "C3:",
            "Ljava/lang/Object;",
            "C4:",
            "Ljava/lang/Object;",
            ">(TC0;TC1;TC2;TC3;TC4;)",
            "Landroid/icu/impl/Row$R5",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/Row$R5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/Row$R5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    iget-boolean v2, p0, Landroid/icu/impl/Row;->frozen:Z

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Row;

    iget-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public cloneAsThawed()Landroid/icu/impl/Row;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Row;

    iget-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/icu/impl/Row;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/Row;->cloneAsThawed()Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 10

    const/4 v7, 0x0

    move-object v4, p1

    check-cast v4, Landroid/icu/impl/Row;

    iget-object v5, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v5, v5

    iget-object v6, v4, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v6, v6

    sub-int v3, v5, v6

    if-eqz v3, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    iget-object v8, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v9, v8

    move v6, v7

    move v1, v0

    :goto_0
    if-ge v6, v9, :cond_2

    aget-object v2, v8, v6

    check-cast v2, Ljava/lang/Comparable;

    iget-object v5, v4, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Comparable;

    invoke-static {v2, v5}, Landroid/icu/impl/Utility;->checkCompare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    if-eqz v3, :cond_1

    return v3

    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v1, v0

    goto :goto_0

    :cond_2
    return v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return v7

    :cond_0
    if-ne p0, p1, :cond_1

    return v11

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/Row;

    move-object v5, v0

    iget-object v6, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v6, v6

    iget-object v8, v5, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v8, v8

    if-eq v6, v8, :cond_2

    return v7

    :cond_2
    const/4 v2, 0x0

    iget-object v8, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v9, v8

    move v6, v7

    move v3, v2

    :goto_0
    if-ge v6, v9, :cond_4

    aget-object v4, v8, v6

    iget-object v10, v5, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    aget-object v10, v10, v3

    invoke-static {v4, v10}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_3

    return v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    move v3, v2

    goto :goto_0

    :cond_4
    return v11

    :catch_0
    move-exception v1

    return v7
.end method

.method public freeze()Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/Row;->freeze()Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public get0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC0;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get1()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC1;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get2()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC2;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get3()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC3;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get4()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC4;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v2, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    array-length v1, v2

    iget-object v3, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    mul-int/lit8 v5, v1, 0x25

    invoke-static {v0}, Landroid/icu/impl/Utility;->checkHash(Ljava/lang/Object;)I

    move-result v6

    add-int v1, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    return v0
.end method

.method protected set(ILjava/lang/Object;)Landroid/icu/impl/Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/icu/impl/Row;->frozen:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public set0(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public set1(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC1;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public set2(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC2;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public set3(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC3;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public set4(Ljava/lang/Object;)Landroid/icu/impl/Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC4;)",
            "Landroid/icu/impl/Row",
            "<TC0;TC1;TC2;TC3;TC4;>;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Row;->set(ILjava/lang/Object;)Landroid/icu/impl/Row;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v4, p0, Landroid/icu/impl/Row;->items:[Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
