.class Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TZDBTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZDBNames"
.end annotation


# static fields
.field private static final synthetic -android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

.field public static final EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

.field private static final KEYS:[Ljava/lang/String;


# instance fields
.field private _names:[Ljava/lang/String;

.field private _parseRegions:[Ljava/lang/String;


# direct methods
.method private static synthetic -getandroid-icu-text-TimeZoneNames$NameTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->-android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->-android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->-android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    invoke-direct {v0, v1, v1}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ss"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "sd"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    return-void
.end method

.method static getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .locals 9

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    return-object v7

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    array-length v7, v7

    new-array v3, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_2

    :try_start_1
    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    return-object v7

    :catch_1
    move-exception v0

    aput-object v8, v3, v1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    return-object v7

    :cond_3
    const/4 v4, 0x0

    :try_start_2
    const-string/jumbo v7, "parseRegions"

    invoke-virtual {v6, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    new-instance v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    invoke-direct {v7, v3, v4}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v7

    :cond_5
    :try_start_3
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->-getandroid-icu-text-TimeZoneNames$NameTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getParseRegions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    return-object v0
.end method
