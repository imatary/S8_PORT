.class public Landroid/icu/util/HebrewHoliday;
.super Landroid/icu/util/Holiday;
.source "HebrewHoliday.java"


# static fields
.field public static ESTHER:Landroid/icu/util/HebrewHoliday;

.field public static GEDALIAH:Landroid/icu/util/HebrewHoliday;

.field public static HANUKKAH:Landroid/icu/util/HebrewHoliday;

.field public static HOSHANAH_RABBAH:Landroid/icu/util/HebrewHoliday;

.field public static LAG_BOMER:Landroid/icu/util/HebrewHoliday;

.field public static PASSOVER:Landroid/icu/util/HebrewHoliday;

.field public static PESACH_SHEINI:Landroid/icu/util/HebrewHoliday;

.field public static PURIM:Landroid/icu/util/HebrewHoliday;

.field public static ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

.field public static SELIHOT:Landroid/icu/util/HebrewHoliday;

.field public static SHAVUOT:Landroid/icu/util/HebrewHoliday;

.field public static SHEMINI_ATZERET:Landroid/icu/util/HebrewHoliday;

.field public static SHUSHAN_PURIM:Landroid/icu/util/HebrewHoliday;

.field public static SIMCHAT_TORAH:Landroid/icu/util/HebrewHoliday;

.field public static SUKKOT:Landroid/icu/util/HebrewHoliday;

.field public static TAMMUZ_17:Landroid/icu/util/HebrewHoliday;

.field public static TEVET_10:Landroid/icu/util/HebrewHoliday;

.field public static TISHA_BAV:Landroid/icu/util/HebrewHoliday;

.field public static TU_BSHEVAT:Landroid/icu/util/HebrewHoliday;

.field public static YOM_HAATZMAUT:Landroid/icu/util/HebrewHoliday;

.field public static YOM_HASHOAH:Landroid/icu/util/HebrewHoliday;

.field public static YOM_HAZIKARON:Landroid/icu/util/HebrewHoliday;

.field public static YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

.field public static YOM_YERUSHALAYIM:Landroid/icu/util/HebrewHoliday;

.field private static final gCalendar:Landroid/icu/util/HebrewCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/16 v6, 0xf

    const/4 v5, 0x6

    const/16 v4, 0x8

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/util/HebrewCalendar;

    invoke-direct {v0}, Landroid/icu/util/HebrewCalendar;-><init>()V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->gCalendar:Landroid/icu/util/HebrewCalendar;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Rosh Hashanah"

    const/4 v2, 0x1

    invoke-direct {v0, v3, v2, v7, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Fast of Gedaliah"

    const/4 v2, 0x3

    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->GEDALIAH:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Yom Kippur"

    const/16 v2, 0xa

    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Sukkot"

    invoke-direct {v0, v3, v6, v5, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SUKKOT:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Hoshanah Rabbah"

    const/16 v2, 0x15

    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->HOSHANAH_RABBAH:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Shemini Atzeret"

    const/16 v2, 0x16

    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHEMINI_ATZERET:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Simchat Torah"

    const/16 v2, 0x17

    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SIMCHAT_TORAH:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Hanukkah"

    const/16 v2, 0x19

    invoke-direct {v0, v7, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->HANUKKAH:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Fast of Tevet 10"

    const/4 v2, 0x3

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TEVET_10:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Tu B\'Shevat"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v6, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TU_BSHEVAT:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Fast of Esther"

    const/16 v2, 0xd

    invoke-direct {v0, v5, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->ESTHER:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Purim"

    const/16 v2, 0xe

    invoke-direct {v0, v5, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->PURIM:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Shushan Purim"

    invoke-direct {v0, v5, v6, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHUSHAN_PURIM:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Passover"

    const/4 v2, 0x7

    invoke-direct {v0, v2, v6, v4, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->PASSOVER:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Yom Hashoah"

    const/4 v2, 0x7

    const/16 v3, 0x1b

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HASHOAH:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Yom Hazikaron"

    const/4 v2, 0x4

    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HAZIKARON:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Yom Ha\'Atzmaut"

    const/4 v2, 0x5

    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HAATZMAUT:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Pesach Sheini"

    const/16 v2, 0xe

    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->PESACH_SHEINI:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Lab B\'Omer"

    const/16 v2, 0x12

    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->LAG_BOMER:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Yom Yerushalayim"

    const/16 v2, 0x1c

    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_YERUSHALAYIM:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Shavuot"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v5, v7, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHAVUOT:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Fast of Tammuz 17"

    const/16 v2, 0xa

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TAMMUZ_17:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Fast of Tisha B\'Av"

    const/16 v2, 0xb

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TISHA_BAV:Landroid/icu/util/HebrewHoliday;

    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string/jumbo v1, "Selihot"

    const/16 v2, 0xc

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SELIHOT:Landroid/icu/util/HebrewHoliday;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/icu/util/SimpleDateRule;

    sget-object v1, Landroid/icu/util/HebrewHoliday;->gCalendar:Landroid/icu/util/HebrewCalendar;

    invoke-direct {v0, p1, p2, v1}, Landroid/icu/util/SimpleDateRule;-><init>(IILandroid/icu/util/Calendar;)V

    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    return-void
.end method
