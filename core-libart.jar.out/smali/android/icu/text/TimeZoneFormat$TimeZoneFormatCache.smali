.class Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneFormatCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Landroid/icu/util/ULocale;",
        "Landroid/icu/text/TimeZoneFormat;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;
    .locals 1

    new-instance v0, Landroid/icu/text/TimeZoneFormat;

    invoke-direct {v0, p2}, Landroid/icu/text/TimeZoneFormat;-><init>(Landroid/icu/util/ULocale;)V

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/icu/util/ULocale;

    check-cast p2, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;->createInstance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method
