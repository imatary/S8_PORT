.class public Landroid/icu/impl/duration/impl/YMDDateFormatter;
.super Ljava/lang/Object;
.source "YMDDateFormatter.java"

# interfaces
.implements Landroid/icu/impl/duration/DateFormatter;


# instance fields
.field private df:Ljava/text/SimpleDateFormat;

.field private localeName:Ljava/lang/String;

.field private requestedFields:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/impl/duration/impl/YMDDateFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->requestedFields:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->localeName:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->timeZone:Ljava/util/TimeZone;

    invoke-static {p2}, Landroid/icu/impl/duration/impl/Utils;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/mm/dd"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->df:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public format(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/impl/YMDDateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DateFormatter;
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->localeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/impl/duration/impl/YMDDateFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->requestedFields:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->timeZone:Ljava/util/TimeZone;

    invoke-direct {v0, v1, p1, v2}, Landroid/icu/impl/duration/impl/YMDDateFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DateFormatter;
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/impl/duration/impl/YMDDateFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->requestedFields:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->localeName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Landroid/icu/impl/duration/impl/YMDDateFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V

    return-object v0

    :cond_0
    return-object p0
.end method
