.class Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
.super Ljava/lang/Object;
.source "ColorSpaceSubset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;
    }
.end annotation


# static fields
.field public static final RGB_COMPARATOR:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;


# instance fields
.field private index:I

.field final maxs:[I

.field final mins:[I

.field final precision:I

.field final precisionMask:I

.field rgb:I

.field final total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->RGB_COMPARATOR:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    return-void
.end method

.method constructor <init>(II)V
    .locals 4

    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precisionMask:I

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precisionMask:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    return-void
.end method

.method constructor <init>(II[I[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    iput-object p3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    iput-object p4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precisionMask:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    return-void
.end method


# virtual methods
.method public final contains(III)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v2, v2, 0x8

    shr-int/2addr p1, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v0

    if-le v2, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v0

    if-lt v2, p1, :cond_0

    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v2, v2, 0x8

    shr-int/2addr p2, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v1

    if-gt v2, p2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v1

    if-lt v2, p2, :cond_0

    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v2, v2, 0x8

    shr-int/2addr p3, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v3

    if-gt v2, p3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v3

    if-lt v2, p3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v8

    iget-object v5, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    iget-object v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v9

    iget-object v5, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v9

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, 0x1

    iget-object v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v10

    iget-object v5, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v10

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    mul-int v4, v3, v2

    mul-int v1, v4, v0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] total : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\trgb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "red: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v8

    iget v7, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v8

    iget v7, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "green: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v9

    iget v7, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v9

    iget v7, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "blue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v10

    iget v7, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v10

    iget v7, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tred: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "green: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "blue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\trdiff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gdiff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bdiff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "colorArea: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpJustRGB(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\trgb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "red: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v4

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v4

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "green: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v5

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v5

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v6

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v6

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getArea()I
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v6

    iget-object v5, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    iget-object v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v7

    iget-object v5, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v7

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, 0x1

    iget-object v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v8

    iget-object v5, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    mul-int v4, v3, v2

    mul-int v1, v4, v0

    return v1
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->index:I

    return v0
.end method

.method public setAverageRGB([I)V
    .locals 18

    const-wide/16 v12, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v14, 0x0

    aget v10, v11, v14

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v14, 0x0

    aget v11, v11, v14

    if-gt v10, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v14, 0x1

    aget v6, v11, v14

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v14, 0x1

    aget v11, v11, v14

    if-gt v6, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v14, 0x2

    aget v2, v11, v14

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v14, 0x2

    aget v11, v11, v14

    if-gt v2, v11, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    mul-int/lit8 v11, v11, 0x2

    shl-int v11, v2, v11

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    mul-int/lit8 v14, v14, 0x1

    shl-int v14, v6, v14

    or-int/2addr v11, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    mul-int/lit8 v14, v14, 0x0

    shl-int v14, v10, v14

    or-int v7, v11, v14

    aget v3, p1, v7

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int v11, v10, v11

    mul-int/2addr v11, v3

    int-to-long v14, v11

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int v11, v6, v11

    mul-int/2addr v11, v3

    int-to-long v14, v11

    add-long/2addr v8, v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int v11, v2, v11

    mul-int/2addr v11, v3

    int-to-long v14, v11

    add-long/2addr v4, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    int-to-long v14, v11

    div-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    int-to-long v14, v11

    div-long/2addr v8, v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    int-to-long v14, v11

    div-long/2addr v4, v14

    const-wide/16 v14, 0xff

    and-long/2addr v14, v12

    const/16 v11, 0x10

    shl-long/2addr v14, v11

    const-wide/16 v16, 0xff

    and-long v16, v16, v8

    const/16 v11, 0x8

    shl-long v16, v16, v11

    or-long v14, v14, v16

    const-wide/16 v16, 0xff

    and-long v16, v16, v4

    const/4 v11, 0x0

    shl-long v16, v16, v11

    or-long v14, v14, v16

    long-to-int v11, v14

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->index:I

    return-void
.end method
