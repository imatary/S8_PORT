.class public final Landroid/icu/lang/UScriptRun;
.super Ljava/lang/Object;
.source "UScriptRun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/lang/UScriptRun$ParenStackEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static PAREN_STACK_DEPTH:I

.field private static pairedCharExtra:I

.field private static pairedCharPower:I

.field private static pairedChars:[I

.field private static parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;


# instance fields
.field private emptyCharArray:[C

.field private fixupCount:I

.field private parenSP:I

.field private pushCount:I

.field private scriptCode:I

.field private scriptLimit:I

.field private scriptStart:I

.field private text:[C

.field private textIndex:I

.field private textLimit:I

.field private textStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    sput v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    new-array v0, v0, [Landroid/icu/lang/UScriptRun$ParenStackEntry;

    sput-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    sget-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    array-length v0, v0

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->highBit(I)B

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    sget-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    array-length v0, v0

    sget v1, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    sub-int/2addr v0, v1

    sput v0, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    return-void

    :array_0
    .array-data 4
        0x28
        0x29
        0x3c
        0x3e
        0x5b
        0x5d
        0x7b
        0x7d
        0xab
        0xbb
        0x2018
        0x2019
        0x201c
        0x201d
        0x2039
        0x203a
        0x3008
        0x3009
        0x300a
        0x300b
        0x300c
        0x300d
        0x300e
        0x300f
        0x3010
        0x3011
        0x3014
        0x3015
        0x3016
        0x3017
        0x3018
        0x3019
        0x301a
        0x301b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [C

    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    iput v2, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset([C)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method private static final dec(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/lang/UScriptRun;->dec(II)I

    move-result v0

    return v0
.end method

.method private static final dec(II)I
    .locals 1

    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    add-int/2addr v0, p0

    sub-int/2addr v0, p1

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->mod(I)I

    move-result v0

    return v0
.end method

.method private final fixup(I)V
    .locals 3

    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    iget v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v1, v2}, Landroid/icu/lang/UScriptRun;->dec(II)I

    move-result v0

    :goto_0
    iget v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    if-lez v1, :cond_0

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    sget-object v1, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    aget-object v1, v1, v0

    iput p1, v1, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getPairIndex(I)I
    .locals 4

    sget v1, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    const/4 v0, 0x0

    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    sget v3, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    aget v2, v2, v3

    if-lt p0, v2, :cond_0

    sget v0, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    shr-int/lit8 v1, v1, 0x1

    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    add-int v3, v0, v1

    aget v2, v2, v3

    if-lt p0, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    aget v2, v2, v0

    if-eq v2, p0, :cond_2

    const/4 v0, -0x1

    :cond_2
    return v0
.end method

.method private static final highBit(I)B
    .locals 3

    const/16 v2, 0x10

    if-gtz p0, :cond_0

    const/16 v1, -0x20

    return v1

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte v0, v2

    :cond_1
    const/16 v1, 0x100

    if-lt p0, v1, :cond_2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_2
    if-lt p0, v2, :cond_3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_3
    const/4 v1, 0x4

    if-lt p0, v1, :cond_4

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_4
    const/4 v1, 0x2

    if-lt p0, v1, :cond_5

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_5
    return v0
.end method

.method private static final inc(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/lang/UScriptRun;->inc(II)I

    move-result v0

    return v0
.end method

.method private static final inc(II)I
    .locals 1

    add-int v0, p0, p1

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->mod(I)I

    move-result v0

    return v0
.end method

.method private static final limitInc(I)I
    .locals 1

    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method private static final mod(I)I
    .locals 1

    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    rem-int v0, p0, v0

    return v0
.end method

.method private final pop()V
    .locals 3

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    :cond_1
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->dec(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    :cond_2
    return-void
.end method

.method private final push(II)V
    .locals 3

    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    new-instance v2, Landroid/icu/lang/UScriptRun$ParenStackEntry;

    invoke-direct {v2, p1, p2}, Landroid/icu/lang/UScriptRun$ParenStackEntry;-><init>(II)V

    aput-object v2, v0, v1

    return-void
.end method

.method private static sameScript(II)Z
    .locals 1

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    if-gt p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final stackIsEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final stackIsNotEmpty()Z
    .locals 1

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final syncFixup()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    return-void
.end method

.method private final top()Landroid/icu/lang/UScriptRun$ParenStackEntry;
    .locals 2

    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public final getScriptCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    return v0
.end method

.method public final getScriptLimit()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    return v0
.end method

.method public final getScriptStart()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    return v0
.end method

.method public final next()Z
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x1

    const/4 v7, 0x0

    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    iget v6, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    if-lt v5, v6, :cond_0

    return v7

    :cond_0
    iput v7, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    iput v5, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->syncFixup()V

    :cond_1
    :goto_0
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    iget v6, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    if-ge v5, v6, :cond_7

    iget-object v5, p0, Landroid/icu/lang/UScriptRun;->text:[C

    iget v6, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    iget v7, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    iget v8, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    iget v9, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v4

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->getPairIndex(I)I

    move-result v2

    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    if-ltz v2, :cond_2

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_4

    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    invoke-direct {p0, v2, v5}, Landroid/icu/lang/UScriptRun;->push(II)V

    :cond_2
    :goto_1
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    invoke-static {v5, v4}, Landroid/icu/lang/UScriptRun;->sameScript(II)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    if-gt v5, v10, :cond_3

    if-le v4, v10, :cond_3

    iput v4, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    invoke-direct {p0, v5}, Landroid/icu/lang/UScriptRun;->fixup(I)V

    :cond_3
    if-ltz v2, :cond_1

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_1

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, -0x2

    :goto_2
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->top()Landroid/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v5

    iget v5, v5, Landroid/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    if-eq v5, v3, :cond_5

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->top()Landroid/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v5

    iget v4, v5, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    goto :goto_1

    :cond_6
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    sub-int/2addr v5, v1

    iput v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    :cond_7
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    iput v5, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    return v10
.end method

.method public final reset()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, -0x1

    :goto_0
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    iput v2, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    return-void
.end method

.method public final reset(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    array-length v0, v1

    :cond_0
    if-ltz p1, :cond_1

    if-gez p2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    sub-int v1, v0, p2

    if-gt p1, v1, :cond_1

    iput p1, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    add-int v1, p1, p2

    iput v1, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    invoke-virtual {p0}, Landroid/icu/lang/UScriptRun;->reset()V

    return-void
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    return-void
.end method

.method public final reset(Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public final reset([C)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public final reset([CII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    :cond_0
    iput-object p1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    invoke-virtual {p0, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(II)V

    return-void
.end method
