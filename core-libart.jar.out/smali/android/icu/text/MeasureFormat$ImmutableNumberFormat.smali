.class final Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableNumberFormat"
.end annotation


# instance fields
.field private nf:Landroid/icu/text/NumberFormat;


# direct methods
.method static synthetic -get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method public constructor <init>(Landroid/icu/text/NumberFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    return-void
.end method


# virtual methods
.method public declared-synchronized format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Landroid/icu/text/NumberFormat;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrefix(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuffix(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
