.class public final Landroid/icu/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Landroid/icu/math/MathContext;

.field private static final DEFAULT_DIGITS:I = 0x9

.field private static final DEFAULT_FORM:I = 0x1

.field private static final DEFAULT_LOSTDIGITS:Z = false

.field private static final DEFAULT_ROUNDINGMODE:I = 0x4

.field public static final ENGINEERING:I = 0x2

.field private static final MAX_DIGITS:I = 0x3b9ac9ff

.field private static final MIN_DIGITS:I = 0x0

.field public static final PLAIN:I = 0x0

.field private static final ROUNDS:[I

.field private static final ROUNDWORDS:[Ljava/lang/String;

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final SCIENTIFIC:I = 0x1

.field private static final serialVersionUID:J = 0x63696d6d63313030L


# instance fields
.field digits:I

.field form:I

.field lostDigits:Z

.field roundingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v1, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/math/MathContext;->ROUNDS:[I

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "ROUND_HALF_UP"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ROUND_UNNECESSARY"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ROUND_CEILING"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "ROUND_DOWN"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "ROUND_FLOOR"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ROUND_HALF_DOWN"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ROUND_HALF_EVEN"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ROUND_UP"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    new-instance v0, Landroid/icu/math/MathContext;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v4, v3, v5}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    sput-object v0, Landroid/icu/math/MathContext;->DEFAULT:Landroid/icu/math/MathContext;

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x7
        0x2
        0x1
        0x3
        0x5
        0x6
        0x0
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Digits too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v0, 0x3b9ac9ff

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Digits too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    :cond_2
    invoke-static {p4}, Landroid/icu/math/MathContext;->isValidRound(I)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad roundingMode value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad form value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput p1, p0, Landroid/icu/math/MathContext;->digits:I

    iput p2, p0, Landroid/icu/math/MathContext;->form:I

    iput-boolean p3, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    iput p4, p0, Landroid/icu/math/MathContext;->roundingMode:I

    return-void
.end method

.method private static isValidRound(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-object v2, Landroid/icu/math/MathContext;->ROUNDS:[I

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    sget-object v2, Landroid/icu/math/MathContext;->ROUNDS:[I

    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public getDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/math/MathContext;->digits:I

    return v0
.end method

.method public getForm()I
    .locals 1

    iget v0, p0, Landroid/icu/math/MathContext;->form:I

    return v0
.end method

.method public getLostDigits()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    return v0
.end method

.method public getRoundingMode()I
    .locals 1

    iget v0, p0, Landroid/icu/math/MathContext;->roundingMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/icu/math/MathContext;->form:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string/jumbo v1, "SCIENTIFIC"

    :goto_0
    sget-object v4, Landroid/icu/math/MathContext;->ROUNDS:[I

    array-length v0, v4

    const/4 v2, 0x0

    :goto_1
    if-lez v0, :cond_0

    iget v4, p0, Landroid/icu/math/MathContext;->roundingMode:I

    sget-object v5, Landroid/icu/math/MathContext;->ROUNDS:[I

    aget v5, v5, v2

    if-ne v4, v5, :cond_3

    sget-object v4, Landroid/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    aget-object v3, v4, v2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "digits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/icu/math/MathContext;->digits:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "form="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "lostDigits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "1"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "roundingMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    iget v4, p0, Landroid/icu/math/MathContext;->form:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const-string/jumbo v1, "ENGINEERING"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "PLAIN"

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "0"

    goto :goto_2
.end method
