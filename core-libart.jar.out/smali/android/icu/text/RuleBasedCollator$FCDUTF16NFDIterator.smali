.class final Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;
.super Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FCDUTF16NFDIterator"
.end annotation


# instance fields
.field private str:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    return-void
.end method


# virtual methods
.method setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->reset()V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    iput-object p2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->s:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->pos:I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    :goto_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-direct {v0, p1, v2, v3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    iput-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->s:Ljava/lang/CharSequence;

    iput v4, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->pos:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1
.end method
