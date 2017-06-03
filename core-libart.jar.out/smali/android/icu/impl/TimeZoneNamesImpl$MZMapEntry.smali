.class Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MZMapEntry"
.end annotation


# instance fields
.field private _from:J

.field private _mzID:Ljava/lang/String;

.field private _to:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_mzID:Ljava/lang/String;

    iput-wide p2, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_from:J

    iput-wide p4, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_to:J

    return-void
.end method


# virtual methods
.method from()J
    .locals 2

    iget-wide v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_from:J

    return-wide v0
.end method

.method mzID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_mzID:Ljava/lang/String;

    return-object v0
.end method

.method to()J
    .locals 2

    iget-wide v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_to:J

    return-wide v0
.end method
