.class Landroid/icu/text/UnicodeSet$EntryRangeIterator;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryRangeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/icu/text/UnicodeSet$EntryRange;",
        ">;"
    }
.end annotation


# instance fields
.field pos:I

.field result:Landroid/icu/text/UnicodeSet$EntryRange;

.field final synthetic this$0:Landroid/icu/text/UnicodeSet;


# direct methods
.method private constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/UnicodeSet$EntryRange;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet$EntryRange;-><init>()V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$EntryRangeIterator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-get1(Landroid/icu/text/UnicodeSet;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/icu/text/UnicodeSet$EntryRange;
    .locals 4

    iget v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-get1(Landroid/icu/text/UnicodeSet;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-get2(Landroid/icu/text/UnicodeSet;)[I

    move-result-object v1

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    aget v1, v1, v2

    iput v1, v0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->-get2(Landroid/icu/text/UnicodeSet;)[I

    move-result-object v1

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->next()Landroid/icu/text/UnicodeSet$EntryRange;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
