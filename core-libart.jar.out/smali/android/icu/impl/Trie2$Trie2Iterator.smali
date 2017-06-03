.class Landroid/icu/impl/Trie2$Trie2Iterator;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Trie2Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/icu/impl/Trie2$Range;",
        ">;"
    }
.end annotation


# instance fields
.field private doLeadSurrogates:Z

.field private doingCodePoints:Z

.field private limitCP:I

.field private mapper:Landroid/icu/impl/Trie2$ValueMapper;

.field private nextStart:I

.field private returnValue:Landroid/icu/impl/Trie2$Range;

.field final synthetic this$0:Landroid/icu/impl/Trie2;


# direct methods
.method constructor <init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/Trie2$Range;

    invoke-direct {v0}, Landroid/icu/impl/Trie2$Range;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    const v0, 0xd800

    if-lt p2, v0, :cond_0

    const v0, 0xdbff

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad lead surrogate value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    const v0, 0xd7c0

    sub-int v0, p2, v0

    shl-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueMapper;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/Trie2$Range;

    invoke-direct {v0}, Landroid/icu/impl/Trie2$Range;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    iput-object p2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    const/high16 v0, 0x110000

    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    return-void
.end method

.method private rangeEndLS(C)I
    .locals 5

    const v4, 0xdbff

    if-lt p1, v4, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-virtual {v2, p1}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v1

    add-int/lit8 v0, p1, 0x1

    :goto_0
    if-gt v0, v4, :cond_1

    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v2

    if-eq v2, v1, :cond_2

    :cond_1
    add-int/lit8 v2, v0, -0x1

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    const v2, 0xdc00

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/icu/impl/Trie2$Range;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/Trie2$Trie2Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    :cond_0
    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    if-lt v4, v5, :cond_1

    iput-boolean v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    const v4, 0xd800

    iput v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v2

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-interface {v4, v2}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v1

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v6, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    invoke-virtual {v4, v5, v6, v2}, Landroid/icu/impl/Trie2;->rangeEnd(III)I

    move-result v0

    :goto_0
    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_3

    :cond_2
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iput v5, v4, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iput v0, v4, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iput v1, v4, Landroid/icu/impl/Trie2$Range;->value:I

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iget-boolean v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    if-eqz v5, :cond_5

    :goto_1
    iput-boolean v3, v4, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget-object v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    return-object v3

    :cond_3
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v2

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-interface {v4, v2}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    invoke-virtual {v4, v5, v6, v2}, Landroid/icu/impl/Trie2;->rangeEnd(III)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v2

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-interface {v4, v2}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v1

    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    int-to-char v4, v4

    invoke-direct {p0, v4}, Landroid/icu/impl/Trie2$Trie2Iterator;->rangeEndLS(C)I

    move-result v0

    :goto_2
    const v4, 0xdbff

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    add-int/lit8 v5, v0, 0x1

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v2

    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-interface {v4, v2}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v4

    if-ne v4, v1, :cond_2

    add-int/lit8 v4, v0, 0x1

    int-to-char v4, v4

    invoke-direct {p0, v4}, Landroid/icu/impl/Trie2$Trie2Iterator;->rangeEndLS(C)I

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/Trie2$Trie2Iterator;->next()Landroid/icu/impl/Trie2$Range;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
