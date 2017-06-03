.class public Landroid/icu/impl/LocaleDisplayNamesImpl;
.super Landroid/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-impl-LocaleDisplayNamesImpl$DataTableTypeSwitchesValues:[I

.field private static final synthetic -android-icu-text-DisplayContext$TypeSwitchesValues:[I

.field private static final cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

.field private static final contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final capitalization:Landroid/icu/text/DisplayContext;

.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private capitalizationUsage:[Z

.field private final currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

.field private final dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field private final format:Landroid/icu/text/MessageFormat;

.field private final formatCloseParen:C

.field private final formatOpenParen:C

.field private final formatReplaceCloseParen:C

.field private final formatReplaceOpenParen:C

.field private final keyTypeFormat:Landroid/icu/text/MessageFormat;

.field private final langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final locale:Landroid/icu/util/ULocale;

.field private final nameLength:Landroid/icu/text/DisplayContext;

.field private final regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final separatorFormat:Landroid/icu/text/MessageFormat;


# direct methods
.method private static synthetic -getandroid-icu-impl-LocaleDisplayNamesImpl$DataTableTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android-icu-impl-LocaleDisplayNamesImpl$DataTableTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android-icu-impl-LocaleDisplayNamesImpl$DataTableTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->values()[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->LANG:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    invoke-virtual {v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->REGION:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    invoke-virtual {v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android-icu-impl-LocaleDisplayNamesImpl$DataTableTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid-icu-text-DisplayContext$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android-icu-text-DisplayContext$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android-icu-text-DisplayContext$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/DisplayContext$Type;->values()[Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android-icu-text-DisplayContext$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>(Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "languages"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "script"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "territory"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "variant"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "key"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "keyValue"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/icu/text/DisplayContext;

    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v0, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    :goto_0
    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-direct {p0, p1, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    return-void

    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_0
.end method

.method public varargs constructor <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V
    .locals 24

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    sget-object v8, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    sget-object v12, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    const/16 v20, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v4, p2, v20

    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl;->-getandroid-icu-text-DisplayContext$TypeSwitchesValues()[I

    move-result-object v22

    invoke-virtual {v4}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4}, Landroid/icu/text/DisplayContext;->value()I

    move-result v22

    sget-object v23, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual/range {v23 .. v23}, Landroid/icu/text/DisplayContext;->value()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    sget-object v8, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :cond_0
    sget-object v8, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :pswitch_1
    move-object v3, v4

    goto :goto_1

    :pswitch_2
    move-object v12, v4

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v20, Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    sget-object v20, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    sget-object v20, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v20

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-object/from16 v20, v0

    const-string/jumbo v21, "localeDisplayPattern"

    const-string/jumbo v22, "separator"

    invoke-virtual/range {v20 .. v22}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v20, "separator"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const-string/jumbo v16, "{0}, {1}"

    :cond_2
    new-instance v20, Landroid/icu/text/MessageFormat;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Landroid/icu/text/MessageFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-object/from16 v20, v0

    const-string/jumbo v21, "localeDisplayPattern"

    const-string/jumbo v22, "pattern"

    invoke-virtual/range {v20 .. v22}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v20, "pattern"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const-string/jumbo v14, "{0} ({1})"

    :cond_3
    new-instance v20, Landroid/icu/text/MessageFormat;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->format:Landroid/icu/text/MessageFormat;

    const-string/jumbo v20, "\uff08"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    const v20, 0xff08

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    const v20, 0xff09

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    const v20, 0xff3b

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    const v20, 0xff3d

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-object/from16 v20, v0

    const-string/jumbo v21, "localeDisplayPattern"

    const-string/jumbo v22, "keyTypePattern"

    invoke-virtual/range {v20 .. v22}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v20, "keyTypePattern"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const-string/jumbo v11, "{0}={1}"

    :cond_4
    new-instance v20, Landroid/icu/text/MessageFormat;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Landroid/icu/text/MessageFormat;

    const/4 v13, 0x0

    sget-object v20, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    move-object/from16 v0, v20

    if-eq v3, v0, :cond_5

    sget-object v20, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    move-object/from16 v0, v20

    if-ne v3, v0, :cond_a

    :cond_5
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Z

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    const-string/jumbo v20, "android/icu/impl/data/icudt56b"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v15

    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v20, "contextTransforms"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_4
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v7

    :cond_6
    :goto_5
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-virtual {v7}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v10

    array-length v0, v10

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    if-eqz v18, :cond_6

    sget-object v20, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    move-object/from16 v0, v20

    if-ne v3, v0, :cond_9

    const/16 v20, 0x0

    aget v17, v10, v20

    :goto_6
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->ordinal()I

    move-result v21

    const/16 v22, 0x1

    aput-boolean v22, v20, v21

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v20

    goto/16 :goto_2

    :cond_8
    const/16 v20, 0x28

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    const/16 v20, 0x29

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    const/16 v20, 0x5b

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    const/16 v20, 0x5d

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    goto/16 :goto_3

    :catch_0
    move-exception v9

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    const/16 v20, 0x1

    aget v17, v10, v20

    goto :goto_6

    :cond_a
    if-nez v13, :cond_b

    sget-object v20, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    move-object/from16 v0, v20

    if-ne v3, v0, :cond_c

    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_c
    sget-object v20, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    invoke-virtual {p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v2, 0x300

    invoke-static {v0, p2, v1, v2}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    return-object p2
.end method

.method private appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p2

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Landroid/icu/text/MessageFormat;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, v4, v1, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .locals 2

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 2

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static haveData(Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;)Z
    .locals 3

    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl;->-getandroid-icu-impl-LocaleDisplayNamesImpl$DataTableTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    instance-of v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    return v0

    :pswitch_1
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    instance-of v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 26

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_0

    const-string/jumbo v12, "root"

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_6

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_7

    const/4 v5, 0x1

    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_8

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    move-object/from16 v23, v0

    sget-object v24, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5f

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5f

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_9

    move-object/from16 v17, v16

    const/4 v6, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_3
    if-nez v17, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->variantDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v11

    if-eqz v11, :cond_d

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_9
    if-eqz v6, :cond_a

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5f

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    move-object/from16 v17, v16

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_a
    if-eqz v5, :cond_1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5f

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    move-object/from16 v17, v16

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Landroid/icu/text/MessageFormat;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v9, v24, v25

    const/16 v25, 0x1

    aput-object v21, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_d
    const/16 v18, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-lez v23, :cond_e

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_e
    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->format:Landroid/icu/text/MessageFormat;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v17, v24, v25

    const/16 v25, 0x1

    aput-object v18, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    :cond_f
    sget-object v23, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    return-object v23
.end method

.method private localeIdName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Languages%short"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Languages"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;
    .locals 6

    sget-object v5, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    invoke-static {p1, v5}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v5}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p2, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    invoke-static {v5, v3}, Landroid/icu/lang/UCharacter;->toTitleFirst(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, p1}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p2, v5, :cond_2

    invoke-static {p1, v3}, Landroid/icu/lang/UCharacter;->toTitleFirst(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v5, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    invoke-direct {v5, v0, p1, v1, v2}, Landroid/icu/text/LocaleDisplayNames$UiListItem;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 3

    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl;->-getandroid-icu-text-DisplayContext$TypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne v1, v2, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    sget-object v22, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v5

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v4}, Landroid/icu/util/ULocale$Builder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/util/ULocale;

    invoke-virtual {v4, v11}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    invoke-static {v11}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v10

    new-instance v2, Landroid/icu/util/ULocale;

    invoke-virtual {v10}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    if-nez v15, :cond_0

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v15, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Set;

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/util/ULocale;

    sget-object v22, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    move-object/from16 v0, v22

    invoke-static {v13, v0}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Landroid/icu/impl/LocaleDisplayNamesImpl;->newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/util/ULocale;

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    const/4 v9, 0x1

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    const/4 v8, 0x1

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/util/ULocale;

    invoke-virtual {v4, v13}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    move-result-object v17

    if-nez v9, :cond_5

    const-string/jumbo v22, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setScript(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    :cond_5
    if-nez v8, :cond_6

    const-string/jumbo v22, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Landroid/icu/impl/LocaleDisplayNamesImpl;->newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v19
.end method

.method public keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Keys"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v2, "currency"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    invoke-static {p2}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p2

    :cond_0
    :goto_0
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v2, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v3, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v3, "Types%short"

    invoke-virtual {v2, v3, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v3, "Types"

    invoke-virtual {v2, v3, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "root"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x5f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    return-object p1

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Languages%short"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v3, "Languages"

    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Countries%short"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v3, "Countries"

    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public scriptDisplayName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Scripts%stand-alone"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Scripts%short"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Scripts"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Scripts%short"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v3, "Scripts"

    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v2, "Variants"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
