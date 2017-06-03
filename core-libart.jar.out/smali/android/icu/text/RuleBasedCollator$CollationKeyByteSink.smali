.class final Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;
.super Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollationKeyByteSink"
.end annotation


# instance fields
.field private key_:Landroid/icu/text/RawCollationKey;


# direct methods
.method static synthetic -get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    return-object v0
.end method

.method constructor <init>(Landroid/icu/text/RawCollationKey;)V
    .locals 1

    iget-object v0, p1, Landroid/icu/text/RawCollationKey;->bytes:[B

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;-><init>([B)V

    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    return-void
.end method


# virtual methods
.method protected AppendBeyondCapacity([BIII)V
    .locals 1

    invoke-virtual {p0, p3, p4}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Resize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    invoke-static {p1, p2, v0, p4, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    return-void
.end method

.method protected Resize(II)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    array-length v3, v3

    mul-int/lit8 v2, v3, 0x2

    mul-int/lit8 v3, p1, 0x2

    add-int v0, p2, v3

    if-ge v2, v0, :cond_0

    move v2, v0

    :cond_0
    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    const/16 v2, 0xc8

    :cond_1
    new-array v1, v2, [B

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    invoke-static {v3, v4, v1, v4, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    iput-object v1, v3, Landroid/icu/text/RawCollationKey;->bytes:[B

    iput-object v1, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    const/4 v3, 0x1

    return v3
.end method
