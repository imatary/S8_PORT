.class final Landroid/icu/text/RuleBasedCollator$CollationBuffer;
.super Ljava/lang/Object;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollationBuffer"
.end annotation


# instance fields
.field leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

.field leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

.field leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

.field leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

.field rawCollationKey:Landroid/icu/text/RawCollationKey;

.field rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

.field rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

.field rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

.field rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;


# direct methods
.method private constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    new-instance v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    new-instance v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    new-instance v0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    new-instance v0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    new-instance v0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    new-instance v0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;)V

    return-void
.end method
