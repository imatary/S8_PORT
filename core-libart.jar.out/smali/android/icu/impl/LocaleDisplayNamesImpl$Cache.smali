.class Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static final synthetic -android-icu-text-DisplayContext$TypeSwitchesValues:[I


# instance fields
.field private cache:Landroid/icu/text/LocaleDisplayNames;

.field private capitalization:Landroid/icu/text/DisplayContext;

.field private dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field private locale:Landroid/icu/util/ULocale;

.field private nameLength:Landroid/icu/text/DisplayContext;


# direct methods
.method private static synthetic -getandroid-icu-text-DisplayContext$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->-android-icu-text-DisplayContext$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->-android-icu-text-DisplayContext$TypeSwitchesValues:[I

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
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->-android-icu-text-DisplayContext$TypeSwitchesValues:[I

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

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v0, :cond_1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    sget-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs get(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 9

    const/4 v4, 0x0

    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    sget-object v3, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    array-length v6, p2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, p2, v5

    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->-getandroid-icu-text-DisplayContext$TypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->value()I

    move-result v7

    sget-object v8, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v8}, Landroid/icu/text/DisplayContext;->value()I

    move-result v8

    if-ne v7, v8, :cond_0

    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :pswitch_1
    move-object v0, v1

    goto :goto_1

    :pswitch_2
    move-object v3, v1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    if-ne v0, v5, :cond_2

    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    if-ne v3, v5, :cond_2

    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    :cond_2
    if-nez v4, :cond_3

    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    iput-object v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    new-instance v4, Landroid/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {v4, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    iput-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    :cond_3
    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
