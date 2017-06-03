.class public Landroid/icu/impl/Trie2$CharSequenceIterator;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CharSequenceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/icu/impl/Trie2$CharSequenceValues;",
        ">;"
    }
.end annotation


# instance fields
.field private fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

.field private index:I

.field private text:Ljava/lang/CharSequence;

.field private textLength:I

.field final synthetic this$0:Landroid/icu/impl/Trie2;


# direct methods
.method constructor <init>(Landroid/icu/impl/Trie2;Ljava/lang/CharSequence;I)V
    .locals 1

    iput-object p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/Trie2$CharSequenceValues;

    invoke-direct {v0}, Landroid/icu/impl/Trie2$CharSequenceValues;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iput-object p2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    invoke-virtual {p0, p3}, Landroid/icu/impl/Trie2$CharSequenceIterator;->set(I)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    iget v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public next()Landroid/icu/impl/Trie2$CharSequenceValues;
    .locals 4

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-virtual {v2, v0}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    iput v3, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->index:I

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iput v0, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->codePoint:I

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iput v1, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->value:I

    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_0

    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/Trie2$CharSequenceIterator;->next()Landroid/icu/impl/Trie2$CharSequenceValues;

    move-result-object v0

    return-object v0
.end method

.method public previous()Landroid/icu/impl/Trie2$CharSequenceValues;
    .locals 4

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-virtual {v2, v0}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v1

    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_0

    iget v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iget v3, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    iput v3, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->index:I

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iput v0, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->codePoint:I

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    iput v1, v2, Landroid/icu/impl/Trie2$CharSequenceValues;->value:I

    iget-object v2, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->fResults:Landroid/icu/impl/Trie2$CharSequenceValues;

    return-object v2
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Trie2.CharSequenceIterator does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->textLength:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Landroid/icu/impl/Trie2$CharSequenceIterator;->index:I

    return-void
.end method
