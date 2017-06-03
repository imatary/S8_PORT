.class final Landroid/icu/text/Normalizer$CharsAppendable;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharsAppendable"
.end annotation


# instance fields
.field private final chars:[C

.field private final limit:I

.field private offset:I

.field private final start:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->chars:[C

    iput p2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    iput p2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->start:I

    iput p3, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 2

    iget v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->chars:[C

    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    aput-char p1, v0, v1

    :cond_0
    iget v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Normalizer$CharsAppendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 5

    sub-int v0, p3, p2

    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    iget v3, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    :goto_0
    move v1, p2

    if-ge v1, p3, :cond_1

    iget-object v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->chars:[C

    iget v3, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/lit8 p2, v1, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    :goto_1
    return-object p0

    :cond_1
    move p2, v1

    goto :goto_1
.end method

.method public length()I
    .locals 3

    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->start:I

    sub-int v0, v1, v2

    iget v1, p0, Landroid/icu/text/Normalizer$CharsAppendable;->offset:I

    iget v2, p0, Landroid/icu/text/Normalizer$CharsAppendable;->limit:I

    if-gt v1, v2, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
