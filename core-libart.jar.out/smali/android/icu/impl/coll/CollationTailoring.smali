.class public final Landroid/icu/impl/coll/CollationTailoring;
.super Ljava/lang/Object;
.source "CollationTailoring.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field public actualLocale:Landroid/icu/util/ULocale;

.field public data:Landroid/icu/impl/coll/CollationData;

.field public maxExpansions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ownedData:Landroid/icu/impl/coll/CollationData;

.field private rules:Ljava/lang/String;

.field private rulesResource:Landroid/icu/util/UResourceBundle;

.field public settings:Landroid/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/coll/SharedObject$Reference",
            "<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field trie:Landroid/icu/impl/Trie2_32;

.field unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/SharedObject$Reference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/coll/SharedObject$Reference",
            "<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    iput v2, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    if-eqz p1, :cond_6

    sget-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v0, v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sget-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sget-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v4, v0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    :goto_3
    return-void

    :cond_6
    new-instance v0, Landroid/icu/impl/coll/SharedObject$Reference;

    new-instance v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-direct {v1}, Landroid/icu/impl/coll/CollationSettings;-><init>()V

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/SharedObject$Reference;-><init>(Landroid/icu/impl/coll/SharedObject;)V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    goto :goto_3
.end method

.method static makeBaseVersion(Landroid/icu/util/VersionInfo;)Landroid/icu/util/VersionInfo;
    .locals 4

    sget-object v0, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v2

    shl-int/lit8 v2, v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method ensureOwnedData()V
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v0, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    new-instance v1, Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v0}, Landroid/icu/impl/coll/CollationData;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    iput-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    return-void
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0
.end method

.method getUCAVersion()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    shr-int/lit8 v0, v0, 0xc

    and-int/lit16 v0, v0, 0xff0

    iget v1, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    shr-int/lit8 v1, v1, 0xe

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    return v0
.end method

.method setRules(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    return-void
.end method

.method setRulesResource(Landroid/icu/util/UResourceBundle;)V
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    return-void
.end method

.method setVersion(II)V
    .locals 7

    shr-int/lit8 v4, p2, 0x10

    const v5, 0xff00

    and-int v1, v4, v5

    shr-int/lit8 v4, p2, 0x10

    and-int/lit16 v2, v4, 0xff

    shr-int/lit8 v4, p2, 0x8

    and-int/lit16 v3, v4, 0xff

    and-int/lit16 v0, p2, 0xff

    sget-object v4, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffc000

    and-int/2addr v5, p1

    or-int/2addr v4, v5

    shr-int/lit8 v5, v1, 0x6

    add-int/2addr v5, v1

    and-int/lit16 v5, v5, 0x3f00

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x3

    shr-int/lit8 v6, v2, 0x5

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    shl-int/lit8 v6, v0, 0x4

    add-int/2addr v5, v6

    shr-int/lit8 v6, v0, 0x4

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    return-void
.end method
