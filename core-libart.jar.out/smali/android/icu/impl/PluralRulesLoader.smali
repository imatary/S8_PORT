.class public Landroid/icu/impl/PluralRulesLoader;
.super Landroid/icu/text/PluralRules$Factory;
.source "PluralRulesLoader.java"


# static fields
.field private static final UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

.field public static final loader:Landroid/icu/impl/PluralRulesLoader;

.field private static localeIdToPluralRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRanges;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private localeIdToCardinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localeIdToOrdinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rulesIdToEquivalentULocale:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private final rulesIdToRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v9, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v6, 0x0

    new-instance v7, Landroid/icu/impl/PluralRulesLoader;

    invoke-direct {v7}, Landroid/icu/impl/PluralRulesLoader;-><init>()V

    sput-object v7, Landroid/icu/impl/PluralRulesLoader;->loader:Landroid/icu/impl/PluralRulesLoader;

    new-instance v7, Landroid/icu/text/PluralRanges;

    invoke-direct {v7}, Landroid/icu/text/PluralRanges;-><init>()V

    invoke-virtual {v7}, Landroid/icu/text/PluralRanges;->freeze()Landroid/icu/text/PluralRanges;

    move-result-object v7

    sput-object v7, Landroid/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

    const/16 v7, 0xab

    new-array v2, v7, [[Ljava/lang/String;

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "id ja km ko lo ms my th vi zh"

    aput-object v8, v7, v12

    aput-object v7, v2, v6

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    aput-object v7, v2, v12

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "am bn fr gu hi hy kn mr pa zu"

    aput-object v8, v7, v12

    aput-object v7, v2, v13

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    aput-object v7, v2, v9

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/4 v8, 0x4

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/4 v8, 0x5

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "fa"

    aput-object v8, v7, v12

    const/4 v8, 0x6

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/4 v8, 0x7

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x8

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x9

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "ka"

    aput-object v8, v7, v12

    const/16 v8, 0xa

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0xb

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0xc

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0xd

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "az de el gl hu it kk ky ml mn ne nl pt sq sw ta te tr ug uz"

    aput-object v8, v7, v12

    const/16 v8, 0xe

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0xf

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x10

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x11

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "af bg ca en es et eu fi nb sv ur"

    aput-object v8, v7, v12

    const/16 v8, 0x12

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x13

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x14

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x15

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "da fil is"

    aput-object v8, v7, v12

    const/16 v8, 0x16

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x17

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x18

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x19

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x1a

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "si"

    aput-object v8, v7, v12

    const/16 v8, 0x1b

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x1c

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x1d

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x1e

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x1f

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "mk"

    aput-object v8, v7, v12

    const/16 v8, 0x20

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x21

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x22

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x23

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x24

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "lv"

    aput-object v8, v7, v12

    const/16 v8, 0x25

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x26

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x27

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x28

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x29

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x2a

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x2b

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x2c

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x2d

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x2e

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "ro"

    aput-object v8, v7, v12

    const/16 v8, 0x2f

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x30

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x31

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x32

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x33

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x34

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x35

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x36

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "hr sr bs"

    aput-object v8, v7, v12

    const/16 v8, 0x37

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x38

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x39

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x3a

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x3b

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x3c

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x3d

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x3e

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x3f

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x40

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "sl"

    aput-object v8, v7, v12

    const/16 v8, 0x41

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x42

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "two"

    aput-object v8, v7, v13

    const/16 v8, 0x43

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x44

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x45

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x46

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "two"

    aput-object v8, v7, v13

    const/16 v8, 0x47

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x48

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x49

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x4a

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "two"

    aput-object v8, v7, v13

    const/16 v8, 0x4b

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x4c

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x4d

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x4e

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "two"

    aput-object v8, v7, v13

    const/16 v8, 0x4f

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x50

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x51

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "he"

    aput-object v8, v7, v12

    const/16 v8, 0x52

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x53

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x54

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x55

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x56

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x57

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x58

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x59

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x5a

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x5b

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x5c

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x5d

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "cs pl sk"

    aput-object v8, v7, v12

    const/16 v8, 0x5e

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x5f

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x60

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x61

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x62

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x63

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x64

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x65

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x66

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x67

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x68

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x69

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x6a

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x6b

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x6c

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "lt ru uk"

    aput-object v8, v7, v12

    const/16 v8, 0x6d

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x6e

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x6f

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x70

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x71

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x72

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x73

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x74

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x75

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x76

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x77

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x78

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x79

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x7a

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x7b

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x7c

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x7d

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "cy"

    aput-object v8, v7, v12

    const/16 v8, 0x7e

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x7f

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "two"

    aput-object v8, v7, v13

    const/16 v8, 0x80

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x81

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x82

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x83

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "two"

    aput-object v8, v7, v13

    const/16 v8, 0x84

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x85

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x86

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x87

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x88

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x89

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x8a

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x8b

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x8c

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x8d

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "one"

    aput-object v8, v7, v13

    const/16 v8, 0x8e

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "two"

    aput-object v8, v7, v13

    const/16 v8, 0x8f

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x90

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x91

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x92

    aput-object v7, v2, v8

    new-array v7, v13, [Ljava/lang/String;

    const-string/jumbo v8, "locales"

    aput-object v8, v7, v6

    const-string/jumbo v8, "ar"

    aput-object v8, v7, v12

    const/16 v8, 0x93

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v13

    const/16 v8, 0x94

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v13

    const/16 v8, 0x95

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x96

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x97

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "zero"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x98

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x99

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x9a

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x9b

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "one"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x9c

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0x9d

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0x9e

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "two"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0x9f

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0xa0

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0xa1

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "few"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0xa2

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0xa3

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0xa4

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "many"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0xa5

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "one"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0xa6

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "two"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0xa7

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "few"

    aput-object v8, v7, v12

    const-string/jumbo v8, "few"

    aput-object v8, v7, v13

    const/16 v8, 0xa8

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "many"

    aput-object v8, v7, v12

    const-string/jumbo v8, "many"

    aput-object v8, v7, v13

    const/16 v8, 0xa9

    aput-object v7, v2, v8

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "other"

    aput-object v8, v7, v6

    const-string/jumbo v8, "other"

    aput-object v8, v7, v12

    const-string/jumbo v8, "other"

    aput-object v8, v7, v13

    const/16 v8, 0xaa

    aput-object v7, v2, v8

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    array-length v9, v2

    move v8, v6

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v4, v2, v8

    aget-object v7, v4, v6

    const-string/jumbo v10, "locales"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/icu/text/PluralRanges;->freeze()Landroid/icu/text/PluralRanges;

    array-length v10, v1

    move v7, v6

    :goto_1
    if-ge v7, v10, :cond_0

    aget-object v0, v1, v7

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aget-object v7, v4, v12

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/icu/text/PluralRanges;

    invoke-direct {v3}, Landroid/icu/text/PluralRanges;-><init>()V

    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    :cond_1
    aget-object v7, v4, v6

    invoke-static {v7}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v7

    aget-object v10, v4, v12

    invoke-static {v10}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v10

    aget-object v11, v4, v13

    invoke-static {v11}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v11

    invoke-virtual {v3, v7, v10, v11}, Landroid/icu/text/PluralRanges;->add(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    goto :goto_2

    :cond_2
    array-length v7, v1

    :goto_3
    if-ge v6, v7, :cond_3

    aget-object v0, v1, v6

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Landroid/icu/impl/PluralRulesLoader;->localeIdToPluralRanges:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/PluralRules$Factory;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    return-void
.end method

.method private checkBuildRulesIdMaps()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_1

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    if-nez v2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Landroid/icu/impl/PluralRulesLoader;->getPluralBundle()Landroid/icu/util/UResourceBundle;

    move-result-object v6

    const-string/jumbo v11, "locales"

    invoke-virtual {v6, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v11

    if-ge v3, v11, :cond_2

    invoke-virtual {v5, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Landroid/icu/util/ULocale;

    invoke-direct {v11, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_2
    :try_start_2
    const-string/jumbo v11, "locales_ordinals"

    invoke-virtual {v6, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v11

    if-ge v3, v11, :cond_3

    invoke-virtual {v5, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    :cond_3
    monitor-enter p0

    :try_start_3
    iget-object v11, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    if-nez v11, :cond_4

    iput-object v7, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    iput-object v8, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    iput-object v9, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    monitor-exit p0

    :cond_5
    return-void

    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method private getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules$PluralType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    goto :goto_0
.end method

.method private getRulesIdToEquivalentULocaleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    return-object v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/impl/PluralRulesLoader;->getRulesForRulesId(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    :cond_2
    return-object v0
.end method

.method public getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 6

    sget-object v5, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v5}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    new-array v2, v5, [Landroid/icu/util/ULocale;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v5

    aput-object v5, v2, v3

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 6

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v4}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, p2, v5

    :cond_0
    sget-object v4, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-virtual {p0, p1, v4}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v4

    :cond_2
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdToEquivalentULocaleMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    if-nez v2, :cond_3

    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v4

    :cond_3
    return-object v2
.end method

.method public getPluralBundle()Landroid/icu/util/UResourceBundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    const-string/jumbo v1, "plurals"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getPluralRanges(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRanges;
    .locals 4

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v3, Landroid/icu/impl/PluralRulesLoader;->localeIdToPluralRanges:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRanges;

    if-nez v2, :cond_0

    const-string/jumbo v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    sget-object v2, Landroid/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

    :cond_0
    return-object v2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRulesForRulesId(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .locals 12

    const/4 v6, 0x0

    iget-object v11, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/PluralRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v11

    if-nez v3, :cond_3

    :try_start_1
    invoke-virtual {p0}, Landroid/icu/impl/PluralRulesLoader;->getPluralBundle()Landroid/icu/util/UResourceBundle;

    move-result-object v5

    const-string/jumbo v10, "rules"

    invoke-virtual {v5, v10}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v10

    if-ge v4, v10, :cond_2

    invoke-virtual {v9, v4}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-lez v4, :cond_1

    const-string/jumbo v10, "; "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    :goto_1
    iget-object v11, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    monitor-enter v11

    :try_start_3
    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/PluralRules;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v11

    :cond_3
    return-object v6

    :cond_4
    :try_start_4
    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v10, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p2}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    :cond_0
    return-object v3

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public hasOverride(Landroid/icu/util/ULocale;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPluralRangesAvailable(Landroid/icu/util/ULocale;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/impl/PluralRulesLoader;->getPluralRanges(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRanges;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
