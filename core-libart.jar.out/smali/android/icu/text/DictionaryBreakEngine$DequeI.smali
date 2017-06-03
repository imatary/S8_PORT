.class Landroid/icu/text/DictionaryBreakEngine$DequeI;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DequeI"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private data:[I

.field private firstIdx:I

.field private lastIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    return-void
.end method

.method private grow()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget-object v2, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    :goto_0
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method offer(I)V
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aput p1, v0, v1

    return-void
.end method

.method peek()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method peekLast()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method pollLast()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method pop()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aget v0, v0, v1

    return v0
.end method

.method push(I)V
    .locals 3

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->grow()V

    :cond_0
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aput p1, v0, v1

    return-void
.end method

.method size()I
    .locals 2

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    sub-int/2addr v0, v1

    return v0
.end method
