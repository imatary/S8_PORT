.class public Landroid/icu/impl/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final GRANDFATHERED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JDKIMPL:Z = false

.field public static final PRIVATEUSE:Ljava/lang/String; = "x"

.field public static final PRIVUSE_VARIANT_PREFIX:Ljava/lang/String; = "lvariant"

.field public static final SEP:Ljava/lang/String; = "-"

.field public static UNDETERMINED:Ljava/lang/String;


# instance fields
.field private _extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _language:Ljava/lang/String;

.field private _privateuse:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v2, Landroid/icu/impl/locale/LanguageTag;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Landroid/icu/impl/locale/LanguageTag;->-assertionsDisabled:Z

    const-string/jumbo v2, "und"

    sput-object v2, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    const/16 v2, 0x1a

    new-array v1, v2, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "art-lojban"

    aput-object v5, v2, v3

    const-string/jumbo v5, "jbo"

    aput-object v5, v2, v4

    aput-object v2, v1, v3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "cel-gaulish"

    aput-object v5, v2, v3

    const-string/jumbo v5, "xtg-x-cel-gaulish"

    aput-object v5, v2, v4

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "en-GB-oed"

    aput-object v5, v2, v3

    const-string/jumbo v5, "en-GB-x-oed"

    aput-object v5, v2, v4

    aput-object v2, v1, v6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-ami"

    aput-object v5, v2, v3

    const-string/jumbo v5, "ami"

    aput-object v5, v2, v4

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-bnn"

    aput-object v5, v2, v3

    const-string/jumbo v5, "bnn"

    aput-object v5, v2, v4

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-default"

    aput-object v5, v2, v3

    const-string/jumbo v5, "en-x-i-default"

    aput-object v5, v2, v4

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-enochian"

    aput-object v5, v2, v3

    const-string/jumbo v5, "und-x-i-enochian"

    aput-object v5, v2, v4

    const/4 v5, 0x6

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-hak"

    aput-object v5, v2, v3

    const-string/jumbo v5, "hak"

    aput-object v5, v2, v4

    const/4 v5, 0x7

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-klingon"

    aput-object v5, v2, v3

    const-string/jumbo v5, "tlh"

    aput-object v5, v2, v4

    const/16 v5, 0x8

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-lux"

    aput-object v5, v2, v3

    const-string/jumbo v5, "lb"

    aput-object v5, v2, v4

    const/16 v5, 0x9

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-mingo"

    aput-object v5, v2, v3

    const-string/jumbo v5, "see-x-i-mingo"

    aput-object v5, v2, v4

    const/16 v5, 0xa

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-navajo"

    aput-object v5, v2, v3

    const-string/jumbo v5, "nv"

    aput-object v5, v2, v4

    const/16 v5, 0xb

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-pwn"

    aput-object v5, v2, v3

    const-string/jumbo v5, "pwn"

    aput-object v5, v2, v4

    const/16 v5, 0xc

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-tao"

    aput-object v5, v2, v3

    const-string/jumbo v5, "tao"

    aput-object v5, v2, v4

    const/16 v5, 0xd

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-tay"

    aput-object v5, v2, v3

    const-string/jumbo v5, "tay"

    aput-object v5, v2, v4

    const/16 v5, 0xe

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-tsu"

    aput-object v5, v2, v3

    const-string/jumbo v5, "tsu"

    aput-object v5, v2, v4

    const/16 v5, 0xf

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "no-bok"

    aput-object v5, v2, v3

    const-string/jumbo v5, "nb"

    aput-object v5, v2, v4

    const/16 v5, 0x10

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "no-nyn"

    aput-object v5, v2, v3

    const-string/jumbo v5, "nn"

    aput-object v5, v2, v4

    const/16 v5, 0x11

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "sgn-BE-FR"

    aput-object v5, v2, v3

    const-string/jumbo v5, "sfb"

    aput-object v5, v2, v4

    const/16 v5, 0x12

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "sgn-BE-NL"

    aput-object v5, v2, v3

    const-string/jumbo v5, "vgt"

    aput-object v5, v2, v4

    const/16 v5, 0x13

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "sgn-CH-DE"

    aput-object v5, v2, v3

    const-string/jumbo v5, "sgg"

    aput-object v5, v2, v4

    const/16 v5, 0x14

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-guoyu"

    aput-object v5, v2, v3

    const-string/jumbo v5, "cmn"

    aput-object v5, v2, v4

    const/16 v5, 0x15

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-hakka"

    aput-object v5, v2, v3

    const-string/jumbo v5, "hak"

    aput-object v5, v2, v4

    const/16 v5, 0x16

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-min"

    aput-object v5, v2, v3

    const-string/jumbo v5, "nan-x-zh-min"

    aput-object v5, v2, v4

    const/16 v5, 0x17

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-min-nan"

    aput-object v5, v2, v3

    const-string/jumbo v5, "nan"

    aput-object v5, v2, v4

    const/16 v5, 0x18

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-xiang"

    aput-object v5, v2, v3

    const-string/jumbo v5, "hsn"

    aput-object v5, v2, v4

    const/16 v4, 0x19

    aput-object v2, v1, v4

    array-length v4, v1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    sget-object v5, Landroid/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    new-instance v6, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    aget-object v7, v0, v3

    invoke-direct {v6, v7}, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v4

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    return-void
.end method

.method public static canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeExtensionSingleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeExtensionSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeExtlang(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizePrivateuseSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExtensionSingleton(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "x"

    invoke-static {v2, p0}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isExtensionSingletonChar(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExtensionSubtag(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExtlang(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLanguage(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivateusePrefix(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "x"

    invoke-static {v0, p0}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivateusePrefixChar(C)Z
    .locals 2

    const-string/jumbo v0, "x"

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPrivateuseSubtag(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRegion(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScript(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVariant(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public static parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    new-instance p1, Landroid/icu/impl/locale/ParseStatus;

    invoke-direct {p1}, Landroid/icu/impl/locale/ParseStatus;-><init>()V

    :goto_0
    const/4 v1, 0x0

    sget-object v7, Landroid/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    new-instance v8, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    invoke-direct {v8, p0}, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v2, Landroid/icu/impl/locale/StringTokenIterator;

    aget-object v7, v0, v6

    const-string/jumbo v8, "-"

    invoke-direct {v2, v7, v8}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_1
    new-instance v4, Landroid/icu/impl/locale/LanguageTag;

    invoke-direct {v4}, Landroid/icu/impl/locale/LanguageTag;-><init>()V

    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseLanguage(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseExtlangs(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseScript(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseRegion(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseVariants(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseExtensions(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    :cond_0
    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parsePrivateuse(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    if-eqz v1, :cond_7

    sget-boolean v7, Landroid/icu/impl/locale/LanguageTag;->-assertionsDisabled:Z

    if-nez v7, :cond_3

    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->reset()V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/icu/impl/locale/StringTokenIterator;

    const-string/jumbo v7, "-"

    invoke-direct {v2, p0, v7}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-boolean v7, Landroid/icu/impl/locale/LanguageTag;->-assertionsDisabled:Z

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p1, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    :cond_6
    :goto_3
    return-object v4

    :cond_7
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v5

    iput v5, p1, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "Empty subtag"

    iput-object v5, p1, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_3

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid subtag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_3
.end method

.method private parseExtensions(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return v6

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v4

    move-object v3, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v5

    iput v5, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget v5, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt v5, v4, :cond_4

    iput v4, p2, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Incomplete extension \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    :cond_3
    return v0

    :cond_4
    iget-object v5, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    :cond_5
    iget-object v5, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseExtlangs(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 4

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    :cond_5
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    goto :goto_0
.end method

.method private parseLanguage(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_2
    return v0
.end method

.method public static parseLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/LanguageTag;
    .locals 24

    new-instance v16, Landroid/icu/impl/locale/LanguageTag;

    invoke-direct/range {v16 .. v16}, Landroid/icu/impl/locale/LanguageTag;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v18

    const/4 v6, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    const-string/jumbo v21, "iw"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const-string/jumbo v7, "he"

    :cond_0
    :goto_0
    move-object/from16 v0, v16

    iput-object v7, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    :cond_1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2

    invoke-static {v15}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-static {v15}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_3

    invoke-static {v14}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-static {v14}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    const/4 v6, 0x1

    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_7

    const/16 v19, 0x0

    new-instance v20, Landroid/icu/impl/locale/StringTokenIterator;

    const-string/jumbo v21, "_"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v21

    if-nez v21, :cond_4

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_a

    :cond_4
    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    const/4 v6, 0x1

    :cond_5
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v21

    if-nez v21, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v21

    if-nez v21, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_c

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_7
    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-virtual {v4}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_8
    const-string/jumbo v21, "ji"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string/jumbo v7, "yi"

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v21, "in"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string/jumbo v7, "id"

    goto/16 :goto_0

    :cond_a
    if-nez v19, :cond_b

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_d

    const-string/jumbo v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-static {v13}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    if-nez v5, :cond_f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    if-eqz v5, :cond_11

    move-object/from16 v0, v16

    iput-object v5, v0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    const/4 v6, 0x1

    :cond_11
    if-eqz v12, :cond_12

    if-nez v11, :cond_16

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "lvariant-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_12
    :goto_4
    if-eqz v11, :cond_13

    move-object/from16 v0, v16

    iput-object v11, v0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    :cond_13
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_15

    if-nez v6, :cond_14

    if-nez v11, :cond_15

    :cond_14
    sget-object v21, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    :cond_15
    return-object v16

    :cond_16
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "lvariant"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    const-string/jumbo v23, "-"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4
.end method

.method private parsePrivateuse(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    return v4

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    iget v4, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt v4, v3, :cond_5

    iput v3, p2, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    const-string/jumbo v4, "Incomplete privateuse"

    iput-object v4, p2, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    :cond_3
    :goto_1
    return v0

    :cond_4
    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    iput v4, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private parseRegion(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_2
    return v0
.end method

.method private parseScript(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_2
    return v0
.end method

.method private parseVariants(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x1

    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    :cond_4
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtlangs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateuse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
