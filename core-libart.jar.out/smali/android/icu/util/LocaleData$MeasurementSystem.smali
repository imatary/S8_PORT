.class public final Landroid/icu/util/LocaleData$MeasurementSystem;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeasurementSystem"
.end annotation


# static fields
.field public static final SI:Landroid/icu/util/LocaleData$MeasurementSystem;

.field public static final UK:Landroid/icu/util/LocaleData$MeasurementSystem;

.field public static final US:Landroid/icu/util/LocaleData$MeasurementSystem;


# instance fields
.field private systemID:I


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/LocaleData$MeasurementSystem;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/util/LocaleData$MeasurementSystem;->equals(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>(I)V

    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>(I)V

    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>(I)V

    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/util/LocaleData$MeasurementSystem;->systemID:I

    return-void
.end method

.method private equals(I)Z
    .locals 1

    iget v0, p0, Landroid/icu/util/LocaleData$MeasurementSystem;->systemID:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
