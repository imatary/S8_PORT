.class public Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;
.super Lcom/sec/android/app/ve/theme/Theme;
.source "Theme_Highlight.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field themeID:I

.field themeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/ve/theme/Theme;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeID:I

    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->fetchThemeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    const-string/jumbo v0, "Theme_Highlight"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->TAG:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeID:I

    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->fetchThemeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected fetchThemeName()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeID:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeID:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "default case : Theme name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "theme_highlight_15_1"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DEE : THEME RETURNED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "theme_highlight_15_2"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "theme_highlight_15_3"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "theme_highlight_30_1"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    const-string/jumbo v0, "theme_highlight_30_2"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    const-string/jumbo v0, "theme_highlight_30_3"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    const-string/jumbo v0, "theme_highlight_60_1"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    const-string/jumbo v0, "theme_highlight_60_2"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    const-string/jumbo v0, "theme_highlight_60_3"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    const-string/jumbo v0, "theme_highlight_15_table"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    const-string/jumbo v0, "theme_highlight_15_run"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_b
    const-string/jumbo v0, "theme_highlight_15_mildnova"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_c
    const-string/jumbo v0, "theme_highlight_30_run"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_d
    const-string/jumbo v0, "theme_highlight_30_table"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_e
    const-string/jumbo v0, "theme_highlight_30_clap"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_f
    const-string/jumbo v0, "theme_highlight_60_whistle"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_10
    const-string/jumbo v0, "theme_highlight_60_mildnova"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto :goto_1

    :pswitch_11
    const-string/jumbo v0, "theme_highlight_60_clap"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_12
    const-string/jumbo v0, "theme_highlight_15_run_B"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_13
    const-string/jumbo v0, "theme_highlight_15_run_C"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_14
    const-string/jumbo v0, "theme_highlight_30_run_B"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_15
    const-string/jumbo v0, "theme_highlight_30_run_C"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_16
    const-string/jumbo v0, "theme_highlight_30_table_B"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_17
    const-string/jumbo v0, "theme_highlight_30_table_C"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_18
    const-string/jumbo v0, "theme_highlight_60_whistle_B"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_19
    const-string/jumbo v0, "theme_highlight_60_whistle_C"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1a
    const-string/jumbo v0, "theme_highlight_60_whistle_D"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1b
    const-string/jumbo v0, "theme_highlight_60_mildnova_B"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1c
    const-string/jumbo v0, "theme_highlight_60_mildnova_C"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1d
    const-string/jumbo v0, "theme_highlight_60_mildnova_D"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1e
    const-string/jumbo v0, "theme_highlight_60_clap_B"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1f
    const-string/jumbo v0, "theme_highlight_60_clap_C"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_20
    const-string/jumbo v0, "theme_highlight_60_travel"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_21
    const-string/jumbo v0, "theme_highlight_60_serene"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_22
    const-string/jumbo v0, "theme_highlight_60_cartoon"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method protected getThemeDataPath()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/ve/theme/Theme;->getThemeDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeDisplayName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemeID()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeID:I

    return v0
.end method

.method protected getThemeJSONFileName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getThemeJSONFileName :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->getThemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->getThemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/theme/Theme_Highlight;->themeName:Ljava/lang/String;

    return-object v0
.end method

.method protected getThemePackage()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.samsung.app.highlightplayer"

    return-object v0
.end method
