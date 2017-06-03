.class Landroid/icu/text/MeasureFormat$NumericFormatters;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumericFormatters"
.end annotation


# instance fields
.field private hourMinute:Landroid/icu/text/DateFormat;

.field private hourMinuteSecond:Landroid/icu/text/DateFormat;

.field private minuteSecond:Landroid/icu/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Landroid/icu/text/DateFormat;

    iput-object p2, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Landroid/icu/text/DateFormat;

    iput-object p3, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Landroid/icu/text/DateFormat;

    return-void
.end method


# virtual methods
.method public getHourMinute()Landroid/icu/text/DateFormat;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Landroid/icu/text/DateFormat;

    return-object v0
.end method

.method public getHourMinuteSecond()Landroid/icu/text/DateFormat;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Landroid/icu/text/DateFormat;

    return-object v0
.end method

.method public getMinuteSecond()Landroid/icu/text/DateFormat;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Landroid/icu/text/DateFormat;

    return-object v0
.end method
