.class public final Landroid/icu/impl/duration/Period;
.super Ljava/lang/Object;
.source "Period.java"


# instance fields
.field final counts:[I

.field final inFuture:Z

.field final timeLimit:B


# direct methods
.method private constructor <init>(IZFLandroid/icu/impl/duration/TimeUnit;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iput-boolean p2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    iget-object v0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    iget-byte v1, p4, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void
.end method

.method constructor <init>(IZ[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iput-boolean p2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    iput-object p3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    return-void
.end method

.method public static at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    new-instance v0, Landroid/icu/impl/duration/Period;

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    return-object v0
.end method

.method private static checkCount(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") cannot be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 3

    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    new-instance v0, Landroid/icu/impl/duration/Period;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    return-object v0
.end method

.method public static moreThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 3

    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    new-instance v0, Landroid/icu/impl/duration/Period;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    return-object v0
.end method

.method private setFuture(Z)Landroid/icu/impl/duration/Period;
    .locals 3

    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Landroid/icu/impl/duration/Period;

    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    invoke-direct {v0, v1, p1, v2}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private setTimeLimit(B)Landroid/icu/impl/duration/Period;
    .locals 3

    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    if-eq v0, p1, :cond_0

    new-instance v0, Landroid/icu/impl/duration/Period;

    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    invoke-direct {v0, p1, v1, v2}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;
    .locals 6

    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v3, v3, v2

    if-eq v3, p2, :cond_1

    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v3, v3

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v3, v3, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aput p2, v1, v2

    new-instance v3, Landroid/icu/impl/duration/Period;

    iget-byte v4, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-boolean v5, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    invoke-direct {v3, v4, v5, v1}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    return-object v3

    :cond_1
    return-object p0
.end method

.method private setTimeUnitValue(Landroid/icu/impl/duration/TimeUnit;F)Landroid/icu/impl/duration/Period;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/Period;->setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 1

    invoke-static {p1}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    invoke-direct {p0, p2, p1}, Landroid/icu/impl/duration/Period;->setTimeUnitValue(Landroid/icu/impl/duration/TimeUnit;F)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public at()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public equals(Landroid/icu/impl/duration/Period;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-byte v2, p1, Landroid/icu/impl/duration/Period;->timeLimit:B

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    iget-boolean v2, p1, Landroid/icu/impl/duration/Period;->inFuture:Z

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v1, v1, v0

    iget-object v2, p1, Landroid/icu/impl/duration/Period;->counts:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    :try_start_0
    check-cast p1, Landroid/icu/impl/duration/Period;

    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/Period;->equals(Landroid/icu/impl/duration/Period;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getCount(Landroid/icu/impl/duration/TimeUnit;)F
    .locals 3

    iget-byte v0, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v1, v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-byte v2, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    shl-int/lit8 v3, v2, 0x1

    iget-boolean v2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    or-int v0, v3, v2

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v3, v3, v1

    xor-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public inFuture()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public inFuture(Z)Landroid/icu/impl/duration/Period;
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public inPast()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public inPast(Z)Landroid/icu/impl/duration/Period;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInFuture()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    return v0
.end method

.method public isInPast()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLessThan()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoreThan()Z
    .locals 2

    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isSet(Landroid/icu/impl/duration/TimeUnit;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lessThan()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public moreThan()Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public omit(Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/Period;->setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method
