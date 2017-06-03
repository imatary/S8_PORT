.class public Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageMatcherData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/util/LocaleMatcher$LanguageMatcherData;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic -android-icu-util-LocaleMatcher$LevelSwitchesValues:[I


# instance fields
.field private volatile frozen:Z

.field private languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

.field private matchingLanguages:Landroid/icu/impl/Relation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/Relation",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

.field private scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;


# direct methods
.method private static synthetic -getandroid-icu-util-LocaleMatcher$LevelSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-android-icu-util-LocaleMatcher$LevelSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-android-icu-util-LocaleMatcher$LevelSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/util/LocaleMatcher$Level;->values()[Landroid/icu/util/LocaleMatcher$Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-android-icu-util-LocaleMatcher$LevelSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    return-void
.end method

.method private addDistance(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object v0

    return-object v0
.end method

.method private addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 22

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v10, v20, v18

    new-instance v6, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLevel()Landroid/icu/util/LocaleMatcher$Level;

    move-result-object v5

    new-instance v16, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLevel()Landroid/icu/util/LocaleMatcher$Level;

    move-result-object v15

    if-eq v5, v15, :cond_0

    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Lengths unequal: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v6, v0, v1}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    move-result-object v2

    if-eqz p4, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-getandroid-icu-util-LocaleMatcher$LevelSwitchesValues()[I

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v6, v1}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    move-result-object v3

    goto :goto_0

    :pswitch_0
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v12, v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    if-nez p4, :cond_1

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v7, v3}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v14, v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    if-nez p4, :cond_1

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v9, v3}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v13, v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    if-nez p4, :cond_1

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v8, v3}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addDistance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object v0

    return-object v0
.end method

.method public addDistance(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->getMatchingLanguages()Landroid/icu/impl/Relation;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->matchingLanguages:Landroid/icu/impl/Relation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object v0

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    return v0
.end method

.method public match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-double v8, v2, v0

    const-wide v0, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, v8, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    add-double/2addr v8, v0

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    add-double/2addr v8, v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v8, v0

    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v0, v8, v0

    if-gez v0, :cond_3

    const-wide/16 v8, 0x0

    :cond_2
    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v8

    return-wide v0

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public matchingLanguages()Landroid/icu/impl/Relation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Relation",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->matchingLanguages:Landroid/icu/impl/Relation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
