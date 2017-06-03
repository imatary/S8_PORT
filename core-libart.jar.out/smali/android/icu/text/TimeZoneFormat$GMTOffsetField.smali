.class Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
.super Ljava/lang/Object;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GMTOffsetField"
.end annotation


# instance fields
.field final _type:C

.field final _width:I


# direct methods
.method constructor <init>(CI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    iput p2, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_width:I

    return-void
.end method

.method static isValid(CI)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getType()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    return v0
.end method

.method getWidth()I
    .locals 1

    iget v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_width:I

    return v0
.end method
