.class Landroid/icu/text/CompactDecimalFormat$Amount;
.super Ljava/lang/Object;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CompactDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Amount"
.end annotation


# instance fields
.field private final qty:D

.field private final unit:Landroid/icu/text/DecimalFormat$Unit;


# direct methods
.method public constructor <init>(DLandroid/icu/text/DecimalFormat$Unit;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/icu/text/CompactDecimalFormat$Amount;->qty:D

    iput-object p3, p0, Landroid/icu/text/CompactDecimalFormat$Amount;->unit:Landroid/icu/text/DecimalFormat$Unit;

    return-void
.end method


# virtual methods
.method public getQty()D
    .locals 2

    iget-wide v0, p0, Landroid/icu/text/CompactDecimalFormat$Amount;->qty:D

    return-wide v0
.end method

.method public getUnit()Landroid/icu/text/DecimalFormat$Unit;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CompactDecimalFormat$Amount;->unit:Landroid/icu/text/DecimalFormat$Unit;

    return-object v0
.end method
