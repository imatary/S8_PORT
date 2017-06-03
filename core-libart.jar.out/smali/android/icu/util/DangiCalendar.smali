.class public Landroid/icu/util/DangiCalendar;
.super Landroid/icu/util/ChineseCalendar;
.source "DangiCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DANGI_EPOCH_YEAR:I = -0x91c

.field private static final KOREA_ZONE:Landroid/icu/util/TimeZone;

.field private static final serialVersionUID:J = 0x7130fd50087bac21L


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v18, Landroid/icu/util/InitialTimeZoneRule;

    const-string/jumbo v3, "GMT+8"

    const v4, 0x1b77400

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4, v5}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    new-array v6, v3, [J

    const-wide v4, -0x21801858c00L

    const/4 v3, 0x0

    aput-wide v4, v6, v3

    const/4 v3, 0x1

    new-array v11, v3, [J

    const-wide v4, -0x210a9d46000L

    const/4 v3, 0x0

    aput-wide v4, v11, v3

    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v16, v0

    const-wide v4, -0x1a9de23f800L

    const/4 v3, 0x0

    aput-wide v4, v16, v3

    new-instance v2, Landroid/icu/util/TimeArrayTimeZoneRule;

    const-string/jumbo v3, "Korean 1897"

    const v4, 0x1808580

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    new-instance v7, Landroid/icu/util/TimeArrayTimeZoneRule;

    const-string/jumbo v8, "Korean 1898-1911"

    const v9, 0x1b77400

    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    new-instance v12, Landroid/icu/util/TimeArrayTimeZoneRule;

    const-string/jumbo v13, "Korean 1912-"

    const v14, 0x1ee6280

    const/4 v15, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v12 .. v17}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    new-instance v19, Landroid/icu/util/RuleBasedTimeZone;

    const-string/jumbo v3, "KOREA_ZONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/RuleBasedTimeZone;->freeze()Landroid/icu/util/TimeZone;

    sput-object v19, Landroid/icu/util/DangiCalendar;->KOREA_ZONE:Landroid/icu/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/icu/util/DangiCalendar;->KOREA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v1, -0x91c

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "dangi"

    return-object v0
.end method
