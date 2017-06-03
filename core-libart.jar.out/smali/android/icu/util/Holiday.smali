.class public abstract Landroid/icu/util/Holiday;
.super Ljava/lang/Object;
.source "Holiday.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# static fields
.field private static noHolidays:[Landroid/icu/util/Holiday;


# instance fields
.field private name:Ljava/lang/String;

.field private rule:Landroid/icu/util/DateRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/icu/util/Holiday;

    sput-object v0, Landroid/icu/util/Holiday;->noHolidays:[Landroid/icu/util/Holiday;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    return-void
.end method

.method public static getHolidays()[Landroid/icu/util/Holiday;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Holiday;->getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;

    move-result-object v0

    return-object v0
.end method

.method public static getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;
    .locals 5

    sget-object v3, Landroid/icu/util/Holiday;->noHolidays:[Landroid/icu/util/Holiday;

    :try_start_0
    const-string/jumbo v4, "android.icu.impl.data.HolidayBundle"

    invoke-static {v4, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string/jumbo v4, "holidays"

    invoke-virtual {v1, v4}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Landroid/icu/util/Holiday;

    move-object v3, v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getHolidays(Ljava/util/Locale;)[Landroid/icu/util/Holiday;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Holiday;->getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v0, p1}, Landroid/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v0, p1, p2}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Holiday;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v3, "android.icu.impl.data.HolidayBundle"

    invoke-static {v3, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    iget-object v3, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Holiday;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRule()Landroid/icu/util/DateRule;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    return-object v0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v0, p1, p2}, Landroid/icu/util/DateRule;->isBetween(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v0, p1}, Landroid/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public setRule(Landroid/icu/util/DateRule;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    return-void
.end method
