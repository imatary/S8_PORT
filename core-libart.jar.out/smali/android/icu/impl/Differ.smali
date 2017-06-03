.class public final Landroid/icu/impl/Differ;
.super Ljava/lang/Object;
.source "Differ.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private EQUALSIZE:I

.field private STACKSIZE:I

.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private aCount:I

.field private aLine:I

.field private aTop:I

.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private bCount:I

.field private bLine:I

.field private bTop:I

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private maxSame:I

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/Differ;->last:Ljava/lang/Object;

    iput-object v2, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    iput v0, p0, Landroid/icu/impl/Differ;->aCount:I

    iput v0, p0, Landroid/icu/impl/Differ;->bCount:I

    iput v1, p0, Landroid/icu/impl/Differ;->aLine:I

    iput v1, p0, Landroid/icu/impl/Differ;->bLine:I

    iput v0, p0, Landroid/icu/impl/Differ;->maxSame:I

    iput v0, p0, Landroid/icu/impl/Differ;->aTop:I

    iput v0, p0, Landroid/icu/impl/Differ;->bTop:I

    iput p1, p0, Landroid/icu/impl/Differ;->STACKSIZE:I

    iput p2, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    add-int v0, p1, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    add-int v0, p1, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    return-void
.end method

.method private flush()V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Landroid/icu/impl/Differ;->aTop:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/icu/impl/Differ;->aCount:I

    iget v2, p0, Landroid/icu/impl/Differ;->aTop:I

    sub-int v0, v1, v2

    iget-object v1, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    iget v2, p0, Landroid/icu/impl/Differ;->aTop:I

    iget-object v3, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Landroid/icu/impl/Differ;->aCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->aLine:I

    iget v2, p0, Landroid/icu/impl/Differ;->aTop:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/Differ;->aLine:I

    iput v4, p0, Landroid/icu/impl/Differ;->aTop:I

    :cond_0
    iget v1, p0, Landroid/icu/impl/Differ;->bTop:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/icu/impl/Differ;->bCount:I

    iget v2, p0, Landroid/icu/impl/Differ;->bTop:I

    sub-int v0, v1, v2

    iget-object v1, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    iget v2, p0, Landroid/icu/impl/Differ;->bTop:I

    iget-object v3, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Landroid/icu/impl/Differ;->bCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->bLine:I

    iget v2, p0, Landroid/icu/impl/Differ;->bTop:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/Differ;->bLine:I

    iput v4, p0, Landroid/icu/impl/Differ;->bTop:I

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/icu/impl/Differ;->addA(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/icu/impl/Differ;->addB(Ljava/lang/Object;)V

    return-void
.end method

.method public addA(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/impl/Differ;->flush()V

    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/icu/impl/Differ;->aCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/Differ;->aCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method public addB(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/impl/Differ;->flush()V

    iget-object v0, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    iget v1, p0, Landroid/icu/impl/Differ;->bCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/Differ;->bCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method public checkMatch(Z)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    iget v9, p0, Landroid/icu/impl/Differ;->aCount:I

    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    if-le v9, v0, :cond_0

    iget v9, p0, Landroid/icu/impl/Differ;->bCount:I

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_1

    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    aget-object v0, v0, v7

    iget-object v1, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iput v7, p0, Landroid/icu/impl/Differ;->maxSame:I

    iget v0, p0, Landroid/icu/impl/Differ;->maxSame:I

    iput v0, p0, Landroid/icu/impl/Differ;->bTop:I

    iput v0, p0, Landroid/icu/impl/Differ;->aTop:I

    iget v0, p0, Landroid/icu/impl/Differ;->maxSame:I

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/icu/impl/Differ;->last:Ljava/lang/Object;

    :cond_2
    iput-object v10, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    if-eqz p1, :cond_4

    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    iput v0, p0, Landroid/icu/impl/Differ;->aTop:I

    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    iput v0, p0, Landroid/icu/impl/Differ;->bTop:I

    iput-object v10, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    return-void

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    if-ge v0, v1, :cond_6

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    iget v2, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/icu/impl/Differ;->aCount:I

    iget-object v4, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    iget v5, p0, Landroid/icu/impl/Differ;->maxSame:I

    iget v6, p0, Landroid/icu/impl/Differ;->bCount:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Differ;->find([Ljava/lang/Object;II[Ljava/lang/Object;II)I

    move-result v8

    if-eq v8, v11, :cond_7

    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/Differ;->aTop:I

    iput v8, p0, Landroid/icu/impl/Differ;->bTop:I

    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/icu/impl/Differ;->aTop:I

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    return-void

    :cond_7
    iget-object v1, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    iget v2, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/icu/impl/Differ;->bCount:I

    iget-object v4, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    iget v5, p0, Landroid/icu/impl/Differ;->maxSame:I

    iget v6, p0, Landroid/icu/impl/Differ;->aCount:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Differ;->find([Ljava/lang/Object;II[Ljava/lang/Object;II)I

    move-result v8

    if-eq v8, v11, :cond_8

    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->EQUALSIZE:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/Differ;->bTop:I

    iput v8, p0, Landroid/icu/impl/Differ;->aTop:I

    iget-object v0, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    iget v1, p0, Landroid/icu/impl/Differ;->bTop:I

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    return-void

    :cond_8
    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->STACKSIZE:I

    if-ge v0, v1, :cond_9

    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->STACKSIZE:I

    if-lt v0, v1, :cond_a

    :cond_9
    iget v0, p0, Landroid/icu/impl/Differ;->aCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/Differ;->aCount:I

    iget v0, p0, Landroid/icu/impl/Differ;->bCount:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/Differ;->bCount:I

    iput-object v10, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public find([Ljava/lang/Object;II[Ljava/lang/Object;II)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II[TT;II)I"
        }
    .end annotation

    sub-int v3, p3, p2

    sub-int v0, p6, v3

    move v1, p5

    :goto_0
    if-gt v1, v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    add-int v4, v1, v2

    aget-object v4, p4, v4

    add-int v5, p2, v2

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method public getA(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-gez p1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/Differ;->last:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/Differ;->aTop:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/Differ;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getACount()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/Differ;->aTop:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getALine(I)I
    .locals 2

    iget v0, p0, Landroid/icu/impl/Differ;->aLine:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public getB(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-gez p1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/Differ;->last:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/Differ;->bTop:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/Differ;->next:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/Differ;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBCount()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/Differ;->bTop:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getBLine(I)I
    .locals 2

    iget v0, p0, Landroid/icu/impl/Differ;->bLine:I

    iget v1, p0, Landroid/icu/impl/Differ;->maxSame:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method
