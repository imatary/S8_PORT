.class public Landroid/icu/text/UFieldPosition;
.super Ljava/text/FieldPosition;
.source "UFieldPosition.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private countVisibleFractionDigits:I

.field private fractionDigits:J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Ljava/text/FieldPosition;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    return-void
.end method


# virtual methods
.method public getCountVisibleFractionDigits()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    return v0
.end method

.method public getFractionDigits()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    return-wide v0
.end method

.method public setFractionDigits(IJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    iput-wide p2, p0, Landroid/icu/text/UFieldPosition;->fractionDigits:J

    return-void
.end method
