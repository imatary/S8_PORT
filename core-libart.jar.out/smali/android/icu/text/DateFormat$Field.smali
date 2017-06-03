.class public Landroid/icu/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final AM_PM:Landroid/icu/text/DateFormat$Field;

.field private static final CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

.field private static final CAL_FIELD_COUNT:I

.field public static final DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

.field public static final ERA:Landroid/icu/text/DateFormat$Field;

.field public static final EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

.field private static final FIELD_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOUR0:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR1:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

.field public static final JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

.field public static final MILLISECOND:Landroid/icu/text/DateFormat$Field;

.field public static final MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

.field public static final MINUTE:Landroid/icu/text/DateFormat$Field;

.field public static final MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final QUARTER:Landroid/icu/text/DateFormat$Field;

.field public static final RELATED_YEAR:Landroid/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECOND:Landroid/icu/text/DateFormat$Field;

.field public static final TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

.field public static final TIME_ZONE:Landroid/icu/text/DateFormat$Field;

.field public static final WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final YEAR_WOY:Landroid/icu/text/DateFormat$Field;

.field private static final serialVersionUID:J = -0x325750c275d0f8cdL


# instance fields
.field private final calendarField:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFieldCount()I

    move-result v1

    sput v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    sget v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    new-array v1, v1, [Landroid/icu/text/DateFormat$Field;

    sput-object v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    new-instance v1, Ljava/util/HashMap;

    sget v2, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "am pm"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->AM_PM:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "day of month"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "day of week"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "day of week in month"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "day of year"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "era"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->ERA:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "hour of day"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "hour of day 1"

    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "hour"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->HOUR0:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "hour 1"

    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->HOUR1:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "millisecond"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->MILLISECOND:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "minute"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "month"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "second"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "time zone"

    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "week of month"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "week of year"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "year"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "local day of week"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "extended year"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "Julian day"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "milliseconds in day"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "year for week of year"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->YEAR_WOY:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "quarter"

    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "related year"

    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->RELATED_YEAR:Landroid/icu/text/DateFormat$Field;

    new-instance v1, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "time separator"

    invoke-direct {v1, v2, v4}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/icu/text/DateFormat$Field;->calendarField:I

    invoke-virtual {p0}, Landroid/icu/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/DateFormat$Field;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    sget v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    if-ge p2, v0, :cond_0

    sget-object v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    aput-object p0, v0, p2

    :cond_0
    return-void
.end method

.method public static ofCalendarField(I)Landroid/icu/text/DateFormat$Field;
    .locals 2

    if-ltz p0, :cond_0

    sget v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Calendar field number is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public getCalendarField()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DateFormat$Field;->calendarField:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/icu/text/DateFormat$Field;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "A subclass of DateFormat.Field must implement readResolve."

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/icu/text/DateFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "Unknown attribute name."

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method
