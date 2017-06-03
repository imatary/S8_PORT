.class public Landroid/icu/impl/duration/BasicPeriodFormatterService;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterService.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatterService;


# static fields
.field private static instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;


# instance fields
.field private ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;


# direct methods
.method public constructor <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    return-void
.end method

.method public static getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;
    .locals 2

    sget-object v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->getInstance()Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    move-result-object v0

    new-instance v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-direct {v1, v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    sput-object v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    :cond_0
    sget-object v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    return-object v1
.end method


# virtual methods
.method public getAvailableLocaleNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->getAvailableLocales()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterService;)V

    return-object v0
.end method

.method public newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 2

    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-direct {v0, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    return-object v0
.end method

.method public newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 2

    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-direct {v0, v1}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    return-object v0
.end method
