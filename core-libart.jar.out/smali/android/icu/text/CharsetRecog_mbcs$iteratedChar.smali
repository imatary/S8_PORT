.class Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
.super Ljava/lang/Object;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "iteratedChar"
.end annotation


# instance fields
.field charValue:I

.field done:Z

.field error:Z

.field index:I

.field nextIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iput-boolean v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    iput-boolean v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    return-void
.end method


# virtual methods
.method nextByte(Landroid/icu/text/CharsetDetector;)I
    .locals 4

    iget v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iget v2, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iget v2, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    return v0
.end method

.method reset()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    iput v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iput-boolean v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    iput-boolean v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    return-void
.end method
