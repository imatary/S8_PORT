.class public Landroid/icu/util/GenderInfo;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/GenderInfo$Cache;,
        Landroid/icu/util/GenderInfo$Gender;,
        Landroid/icu/util/GenderInfo$ListGenderStyle;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic -android-icu-util-GenderInfo$GenderSwitchesValues:[I

.field private static final synthetic -android-icu-util-GenderInfo$ListGenderStyleSwitchesValues:[I

.field private static genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

.field private static neutral:Landroid/icu/util/GenderInfo;


# instance fields
.field private final style:Landroid/icu/util/GenderInfo$ListGenderStyle;


# direct methods
.method static synthetic -get0()Landroid/icu/util/GenderInfo;
    .locals 1

    sget-object v0, Landroid/icu/util/GenderInfo;->neutral:Landroid/icu/util/GenderInfo;

    return-object v0
.end method

.method private static synthetic -getandroid-icu-util-GenderInfo$GenderSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/util/GenderInfo;->-android-icu-util-GenderInfo$GenderSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/util/GenderInfo;->-android-icu-util-GenderInfo$GenderSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/util/GenderInfo$Gender;->values()[Landroid/icu/util/GenderInfo$Gender;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Landroid/icu/util/GenderInfo;->-android-icu-util-GenderInfo$GenderSwitchesValues:[I

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

.method private static synthetic -getandroid-icu-util-GenderInfo$ListGenderStyleSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/util/GenderInfo;->-android-icu-util-GenderInfo$ListGenderStyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/util/GenderInfo;->-android-icu-util-GenderInfo$ListGenderStyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/util/GenderInfo$ListGenderStyle;->values()[Landroid/icu/util/GenderInfo$ListGenderStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Landroid/icu/util/GenderInfo;->-android-icu-util-GenderInfo$ListGenderStyleSwitchesValues:[I

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
    .locals 2

    new-instance v0, Landroid/icu/util/GenderInfo;

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-direct {v0, v1}, Landroid/icu/util/GenderInfo;-><init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V

    sput-object v0, Landroid/icu/util/GenderInfo;->neutral:Landroid/icu/util/GenderInfo;

    new-instance v0, Landroid/icu/util/GenderInfo$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/GenderInfo$Cache;-><init>(Landroid/icu/util/GenderInfo$Cache;)V

    sput-object v0, Landroid/icu/util/GenderInfo;->genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/GenderInfo;->style:Landroid/icu/util/GenderInfo$ListGenderStyle;

    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/icu/util/GenderInfo;->genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

    invoke-virtual {v0, p0}, Landroid/icu/util/GenderInfo$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/util/GenderInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/GenderInfo;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getListGender(Ljava/util/List;)Landroid/icu/util/GenderInfo$Gender;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/GenderInfo$Gender;",
            ">;)",
            "Landroid/icu/util/GenderInfo$Gender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v4

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/GenderInfo$Gender;

    return-object v4

    :cond_1
    invoke-static {}, Landroid/icu/util/GenderInfo;->-getandroid-icu-util-GenderInfo$ListGenderStyleSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Landroid/icu/util/GenderInfo;->style:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v4

    :pswitch_0
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v4

    :pswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo$Gender;

    invoke-static {}, Landroid/icu/util/GenderInfo;->-getandroid-icu-util-GenderInfo$GenderSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    if-eqz v3, :cond_2

    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v4

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    if-eqz v2, :cond_3

    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v4

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_4
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v4

    :cond_4
    if-eqz v3, :cond_5

    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    :goto_1
    return-object v4

    :cond_5
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    goto :goto_1

    :pswitch_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo$Gender;

    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    if-eq v0, v4, :cond_6

    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    return-object v4

    :cond_7
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public varargs getListGender([Landroid/icu/util/GenderInfo$Gender;)Landroid/icu/util/GenderInfo$Gender;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/GenderInfo;->getListGender(Ljava/util/List;)Landroid/icu/util/GenderInfo$Gender;

    move-result-object v0

    return-object v0
.end method
