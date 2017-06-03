.class public Landroid/icu/text/BidiRun;
.super Ljava/lang/Object;
.source "BidiRun.java"


# instance fields
.field insertRemove:I

.field level:B

.field limit:I

.field start:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    return-void
.end method

.method constructor <init>(IIB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/BidiRun;->start:I

    iput p2, p0, Landroid/icu/text/BidiRun;->limit:I

    iput-byte p3, p0, Landroid/icu/text/BidiRun;->level:B

    return-void
.end method


# virtual methods
.method copyFrom(Landroid/icu/text/BidiRun;)V
    .locals 1

    iget v0, p1, Landroid/icu/text/BidiRun;->start:I

    iput v0, p0, Landroid/icu/text/BidiRun;->start:I

    iget v0, p1, Landroid/icu/text/BidiRun;->limit:I

    iput v0, p0, Landroid/icu/text/BidiRun;->limit:I

    iget-byte v0, p1, Landroid/icu/text/BidiRun;->level:B

    iput-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    iget v0, p1, Landroid/icu/text/BidiRun;->insertRemove:I

    iput v0, p0, Landroid/icu/text/BidiRun;->insertRemove:I

    return-void
.end method

.method public getDirection()B
    .locals 1

    iget-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    return v0
.end method

.method public getEmbeddingLevel()B
    .locals 1

    iget-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    return v0
.end method

.method public getLength()I
    .locals 2

    iget v0, p0, Landroid/icu/text/BidiRun;->limit:I

    iget v1, p0, Landroid/icu/text/BidiRun;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Landroid/icu/text/BidiRun;->limit:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Landroid/icu/text/BidiRun;->start:I

    return v0
.end method

.method public isEvenRun()Z
    .locals 2

    const/4 v0, 0x0

    iget-byte v1, p0, Landroid/icu/text/BidiRun;->level:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOddRun()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Landroid/icu/text/BidiRun;->level:B

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BidiRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/BidiRun;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/BidiRun;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/icu/text/BidiRun;->level:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
