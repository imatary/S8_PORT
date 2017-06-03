.class public Landroid/icu/impl/duration/BasicPeriodFormatterFactory;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    }
.end annotation


# instance fields
.field private customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

.field private customizationsInUse:Z

.field private data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private final ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

.field private localeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    return-void
.end method

.method public static getDefault()Landroid/icu/impl/duration/BasicPeriodFormatterFactory;
    .locals 1

    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    return-object v0
.end method

.method private updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->copy()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    return-object v0
.end method


# virtual methods
.method public getCountVariant()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return v0
.end method

.method getData()Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    return-object v0
.end method

.method getData(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLimit()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    return v0
.end method

.method public getDisplayPastFuture()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    return v0
.end method

.method public getFormatter()Landroid/icu/impl/duration/PeriodFormatter;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->getData()Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/icu/impl/duration/BasicPeriodFormatter;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V

    return-object v0
.end method

.method public getSeparatorVariant()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    return v0
.end method

.method public getUnitVariant()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    return v0
.end method

.method public setCountVariant(I)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 2

    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return-object p0
.end method

.method public setDisplayLimit(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    return-object p0
.end method

.method public setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    return-object p0
.end method

.method public setSeparatorVariant(I)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 2

    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    return-object p0
.end method

.method public setUnitVariant(I)Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 2

    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    return-object p0
.end method
