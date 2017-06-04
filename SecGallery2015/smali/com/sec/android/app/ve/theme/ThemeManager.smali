.class public Lcom/sec/android/app/ve/theme/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;,
        Lcom/sec/android/app/ve/theme/ThemeManager$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/ve/theme/ThemeManager$Adapter;

.field private mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mAdapter:Lcom/sec/android/app/ve/theme/ThemeManager$Adapter;

    new-instance v0, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    invoke-direct {v0}, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    return-void
.end method


# virtual methods
.method public addTheme(Lcom/sec/android/app/ve/theme/Theme;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->addTheme(Lcom/sec/android/app/ve/theme/Theme;)V

    return-void
.end method

.method public getThemeAssetManager(I)Landroid/content/res/AssetManager;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->getCompatibleTheme(I)Lcom/sec/android/app/ve/theme/Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/ve/theme/Theme;->getThemeAssetManager()Landroid/content/res/AssetManager;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeDataPath(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->getCompatibleTheme(I)Lcom/sec/android/app/ve/theme/Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/ve/theme/Theme;->getThemeDataPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeDisplayName(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->getCompatibleTheme(I)Lcom/sec/android/app/ve/theme/Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/ve/theme/Theme;->getThemeDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeJSONFilePath(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->getCompatibleTheme(I)Lcom/sec/android/app/ve/theme/Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/ve/theme/Theme;->getThemeJSONFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeName(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->getCompatibleTheme(I)Lcom/sec/android/app/ve/theme/Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/ve/theme/Theme;->getThemeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemePackage(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->getCompatibleTheme(I)Lcom/sec/android/app/ve/theme/Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/ve/theme/Theme;->getThemePackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isThemeAdded(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/theme/ThemeManager;->mCompatibleThemeSupport:Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/theme/ThemeManager$CompatibleThemeSupport;->isThemeAdded(I)Z

    move-result v0

    return v0
.end method
