.class public Landroid/icu/text/ChineseDateFormat$Field;
.super Landroid/icu/text/DateFormat$Field;
.source "ChineseDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ChineseDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x46ce68aff2525d8aL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/icu/text/ChineseDateFormat$Field;

    const-string/jumbo v1, "is leap month"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ChineseDateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static ofCalendarField(I)Landroid/icu/text/DateFormat$Field;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    sget-object v0, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/icu/text/DateFormat$Field;->ofCalendarField(I)Landroid/icu/text/DateFormat$Field;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/ChineseDateFormat$Field;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "A subclass of ChineseDateFormat.Field must implement readResolve."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    invoke-virtual {v1}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/icu/text/ChineseDateFormat$Field;->IS_LEAP_MONTH:Landroid/icu/text/ChineseDateFormat$Field;

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Unknown attribute name."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
