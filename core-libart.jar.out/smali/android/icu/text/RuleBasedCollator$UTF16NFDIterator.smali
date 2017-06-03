.class Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;
.super Landroid/icu/text/RuleBasedCollator$NFDIterator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTF16NFDIterator"
.end annotation


# instance fields
.field protected pos:I

.field protected s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected nextRawCodePoint()I
    .locals 3

    iget v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    invoke-static {v1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    return v0
.end method

.method setText(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->reset()V

    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    return-void
.end method
