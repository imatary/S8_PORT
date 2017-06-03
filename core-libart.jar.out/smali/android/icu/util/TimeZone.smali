.class public abstract Landroid/icu/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/TimeZone$ConstantZone;,
        Landroid/icu/util/TimeZone$SystemTimeZoneType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/util/TimeZone;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final GENERIC_LOCATION:I = 0x7

.field public static final GMT_ZONE:Landroid/icu/util/TimeZone;

.field static final GMT_ZONE_ID:Ljava/lang/String; = "Etc/GMT"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final LONG:I = 0x1

.field public static final LONG_GENERIC:I = 0x3

.field public static final LONG_GMT:I = 0x5

.field public static final SHORT:I = 0x0

.field public static final SHORT_COMMONLY_USED:I = 0x6

.field public static final SHORT_GENERIC:I = 0x2

.field public static final SHORT_GMT:I = 0x4

.field public static final TIMEZONE_ICU:I = 0x0

.field public static final TIMEZONE_JDK:I = 0x1

.field private static final TZIMPL_CONFIG_ICU:Ljava/lang/String; = "ICU"

.field private static final TZIMPL_CONFIG_JDK:Ljava/lang/String; = "JDK"

.field private static final TZIMPL_CONFIG_KEY:Ljava/lang/String; = "android.icu.util.TimeZone.DefaultTimeZoneType"

.field private static TZ_IMPL:I = 0x0

.field public static final UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

.field public static final UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile defaultZone:Landroid/icu/util/TimeZone; = null

.field private static final serialVersionUID:J = -0xa5690eb38a351bfL


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-class v1, Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/icu/util/TimeZone;->-assertionsDisabled:Z

    const-string/jumbo v1, "android.icu.util.TimeZone"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Landroid/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Landroid/icu/util/TimeZone$ConstantZone;

    const-string/jumbo v4, "Etc/Unknown"

    invoke-direct {v1, v2, v4, v5}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Landroid/icu/util/TimeZone$ConstantZone;)V

    invoke-virtual {v1}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v1

    sput-object v1, Landroid/icu/util/TimeZone;->UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

    new-instance v1, Landroid/icu/util/TimeZone$ConstantZone;

    const-string/jumbo v4, "Etc/GMT"

    invoke-direct {v1, v2, v4, v5}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Landroid/icu/util/TimeZone$ConstantZone;)V

    invoke-virtual {v1}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v1

    sput-object v1, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    sput-object v5, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    sput v2, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const-string/jumbo v1, "android.icu.util.TimeZone.DefaultTimeZoneType"

    const-string/jumbo v2, "ICU"

    invoke-static {v1, v2}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "JDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput v3, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-void
.end method

.method private _getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 11

    if-nez p3, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "locale is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v8, 0x0

    const/4 v2, 0x7

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    :cond_1
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Landroid/icu/util/Output;

    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v6, v2}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz p2, :cond_5

    iget-object v2, v6, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v3, :cond_5

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result v3

    add-int v7, v2, v3

    :goto_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    :goto_3
    sget-boolean v2, Landroid/icu/util/TimeZone;->-assertionsDisabled:Z

    if-nez v2, :cond_12

    if-eqz v8, :cond_11

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    :cond_4
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result v3

    add-int v7, v2, v3

    :goto_5
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v2, v3, v10}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :pswitch_2
    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_3
    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_4
    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_5
    if-nez p2, :cond_2

    iget-object v2, v6, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v7

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v7

    goto :goto_5

    :pswitch_5
    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_9
    sget-boolean v2, Landroid/icu/util/TimeZone;->-assertionsDisabled:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    if-eq p1, v2, :cond_a

    if-nez p1, :cond_b

    :cond_a
    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_b
    const/4 v2, 0x6

    if-eq p1, v2, :cond_a

    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v9

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_7
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v0, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result v3

    add-int v7, v2, v3

    :goto_8
    const/4 v2, 0x1

    if-ne p1, v2, :cond_10

    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    :sswitch_0
    if-eqz p2, :cond_d

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_7

    :cond_d
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_7

    :sswitch_1
    if-eqz p2, :cond_e

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_7

    :cond_e
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v7

    goto :goto_8

    :cond_10
    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_12
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static declared-synchronized clearCachedDefault()V
    .locals 2

    const-class v0, Landroid/icu/util/TimeZone;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static countEquivalentIDs(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->countEquivalentIDs(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/TimeZone$SystemTimeZoneType;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/icu/impl/ZoneMeta;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v1, v2, v2}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getAvailableIDs(I)[Ljava/lang/String;
    .locals 4

    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Etc/Unknown"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "Etc/Unknown"

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    aput-boolean v1, p1, v3

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCustomID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/icu/util/TimeZone;
    .locals 4

    sget-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    if-nez v1, :cond_1

    const-class v2, Landroid/icu/util/TimeZone;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    if-nez v1, :cond_0

    sget v1, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    new-instance v1, Landroid/icu/impl/JavaTimeZone;

    invoke-direct {v1}, Landroid/icu/impl/JavaTimeZone;-><init>()V

    sput-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    :cond_1
    sget-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    sput-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getDefaultTimeZoneType()I
    .locals 1

    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    return v0
.end method

.method public static getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/ZoneMeta;->getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 2

    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static getIDForWindowsID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    const-string/jumbo v7, "windowsZones"

    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v6, v7, v8}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    const-string/jumbo v6, "mapTimezones"

    invoke-virtual {v4, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v5, p1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    :try_start_2
    const-string/jumbo v6, "001"

    invoke-virtual {v5, v6}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    :cond_1
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "Etc/Unknown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown system zone id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public static getTZDataVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 2

    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZone(Ljava/lang/String;I)Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private static getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Landroid/icu/impl/JavaTimeZone;->createTimeZone(Ljava/lang/String;)Landroid/icu/impl/JavaTimeZone;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    if-nez p0, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_2
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCustomTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    sget-object v1, Landroid/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" is a bogus id so timezone is falling back to Etc/Unknown(GMT)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v0, Landroid/icu/util/TimeZone;->UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

    :cond_5
    if-eqz p2, :cond_6

    :goto_0
    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWindowsID(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-array v0, v9, [Z

    aput-boolean v10, v0, v10

    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    aget-boolean v9, v0, v10

    if-nez v9, :cond_0

    return-object v13

    :cond_0
    const-string/jumbo v9, "android/icu/impl/data/icudt56b"

    const-string/jumbo v11, "windowsZones"

    sget-object v12, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v9, v11, v12}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    const-string/jumbo v9, "mapTimezones"

    invoke-virtual {v5, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v4

    :cond_2
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v6, v7, v9

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    return-object v13
.end method

.method public static declared-synchronized setDefault(Landroid/icu/util/TimeZone;)V
    .locals 4

    const-class v3, Landroid/icu/util/TimeZone;

    monitor-enter v3

    :try_start_0
    sput-object p0, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    const/4 v1, 0x0

    sget-object v2, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    instance-of v2, v2, Landroid/icu/impl/JavaTimeZone;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    check-cast v2, Landroid/icu/impl/JavaTimeZone;

    invoke-virtual {v2}, Landroid/icu/impl/JavaTimeZone;->unwrap()Ljava/util/TimeZone;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    if-eqz p0, :cond_0

    :try_start_1
    instance-of v2, p0, Landroid/icu/impl/OlsonTimeZone;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/TimeZoneAdapter;->wrap(Landroid/icu/util/TimeZone;)Ljava/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized setDefaultTimeZoneType(I)V
    .locals 3

    const-class v1, Landroid/icu/util/TimeZone;

    monitor-enter v1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid timezone type"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sput p0, Landroid/icu/util/TimeZone;->TZ_IMPL:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    check-cast p1, Landroid/icu/util/TimeZone;

    iget-object v1, p1, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getDSTSavings()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x36ee80

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/TimeZone;->getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 3

    if-ltz p2, :cond_0

    const/4 v0, 0x7

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p2, p1, p3}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/TimeZone;->getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    aget v1, v0, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    add-int/2addr v1, v2

    return v1
.end method

.method public getOffset(JZ[I)V
    .locals 11

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    aput v0, p4, v9

    if-nez p3, :cond_0

    aget v0, p4, v9

    int-to-long v2, v0

    add-long/2addr p1, v2

    :cond_0
    const/4 v0, 0x6

    new-array v7, v0, [I

    const/4 v8, 0x0

    :goto_0
    invoke-static {p1, p2, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    aget v2, v7, v9

    aget v3, v7, v1

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    aget v2, p4, v9

    sub-int/2addr v0, v2

    aput v0, p4, v1

    if-nez v8, :cond_1

    if-eqz p3, :cond_1

    aget v0, p4, v1

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    aget v0, p4, v1

    int-to-long v2, v0

    sub-long/2addr p1, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v1

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public isFrozen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen TimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
