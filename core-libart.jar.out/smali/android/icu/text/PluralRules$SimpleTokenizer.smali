.class Landroid/icu/text/PluralRules$SimpleTokenizer;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleTokenizer"
.end annotation


# static fields
.field static final BREAK_AND_IGNORE:Landroid/icu/text/UnicodeSet;

.field static final BREAK_AND_KEEP:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x2e

    const/16 v6, 0x2c

    const/16 v5, 0x25

    const/16 v4, 0x21

    const/4 v3, 0x6

    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v1, 0xa

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v5, v1, v2

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v6, v1, v2

    aput v7, v1, v3

    const/4 v2, 0x7

    aput v7, v1, v2

    const/16 v2, 0x3d

    const/16 v3, 0x8

    aput v2, v1, v3

    const/16 v2, 0x3d

    const/16 v3, 0x9

    aput v2, v1, v3

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Landroid/icu/text/UnicodeSet;

    return-void

    :array_0
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v2, -0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v4, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ltz v2, :cond_0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz v2, :cond_2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    if-gez v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_4
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method
