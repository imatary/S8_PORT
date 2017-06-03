.class public Landroid/icu/text/TimeZoneNames$MatchInfo;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchInfo"
.end annotation


# instance fields
.field private _matchLength:I

.field private _mzID:Ljava/lang/String;

.field private _nameType:Landroid/icu/text/TimeZoneNames$NameType;

.field private _tzID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "nameType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Either tzID or mzID must be available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matchLength must be positive value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_nameType:Landroid/icu/text/TimeZoneNames$NameType;

    iput-object p2, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    iput p4, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    return-void
.end method


# virtual methods
.method public matchLength()I
    .locals 1

    iget v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    return v0
.end method

.method public mzID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    return-object v0
.end method

.method public nameType()Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_nameType:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method

.method public tzID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    return-object v0
.end method
