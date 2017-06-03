.class Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeSetIterator2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private buffer:[C

.field private current:I

.field private item:I

.field private len:I

.field private limit:I

.field private sourceList:[I

.field private sourceStrings:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->-get1(Landroid/icu/text/UnicodeSet;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    iget v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lez v0, :cond_0

    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/TreeSet;

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->-get2(Landroid/icu/text/UnicodeSet;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    iput-object v4, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    :cond_1
    :goto_0
    const v2, 0xffff

    if-gt v0, v2, :cond_3

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v2, v2, v3

    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v2, v2, v3

    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    if-nez v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [C

    iput-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    :cond_4
    const/high16 v2, 0x10000

    sub-int v1, v0, v2

    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    ushr-int/lit8 v3, v1, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    const/4 v4, 0x0

    aput-char v3, v2, v4

    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    and-int/lit16 v3, v1, 0x3ff

    const v4, 0xdc00

    add-int/2addr v3, v4

    int-to-char v3, v3

    const/4 v4, 0x1

    aput-char v3, v2, v4

    iget-object v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
