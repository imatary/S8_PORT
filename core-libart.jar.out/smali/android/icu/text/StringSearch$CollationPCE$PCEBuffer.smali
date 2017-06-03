.class final Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch$CollationPCE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PCEBuffer"
.end annotation


# instance fields
.field private bufferIndex_:I

.field private buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method empty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method get()Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    .locals 2

    iget v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method put(JII)V
    .locals 5

    const/4 v3, 0x0

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    iget-object v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    new-array v0, v1, [Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget-object v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    :cond_0
    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    new-instance v3, Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/icu/text/StringSearch$CollationPCE$PCEI;-><init>(Landroid/icu/text/StringSearch$CollationPCE$PCEI;)V

    aput-object v3, v1, v2

    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v1, v1, v2

    iput-wide p1, v1, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->ce_:J

    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v1, v1, v2

    iput p3, v1, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->low_:I

    iget-object v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    iget v2, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v1, v1, v2

    iput p4, v1, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->high_:I

    iget v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    return-void
.end method
