.class public abstract Lcom/sec/android/app/ve/theme/Theme;
.super Ljava/lang/Object;
.source "Theme.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mDownloader:Lcom/sec/android/app/ve/theme/Download;

.field private mThemeAdapter:Lcom/sec/android/app/ve/theme/ThemeManager$Adapter;

.field protected mThemeDrawableResId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->createDownload()Lcom/sec/android/app/ve/theme/Download;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/theme/Theme;->mDownloader:Lcom/sec/android/app/ve/theme/Download;

    iput-object v1, p0, Lcom/sec/android/app/ve/theme/Theme;->mThemeAdapter:Lcom/sec/android/app/ve/theme/ThemeManager$Adapter;

    iput-object v1, p0, Lcom/sec/android/app/ve/theme/Theme;->mActivity:Landroid/app/Activity;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/theme/Theme;->mThemeDrawableResId:I

    return-void
.end method


# virtual methods
.method protected getThemeAssetManager()Landroid/content/res/AssetManager;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getAppPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/ve/theme/Theme;->getThemePackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getThemeDataPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "themedata"

    return-object v0
.end method

.method protected abstract getThemeDisplayName()Ljava/lang/String;
.end method

.method protected abstract getThemeID()I
.end method

.method protected abstract getThemeJSONFileName()Ljava/lang/String;
.end method

.method protected getThemeJSONFilePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/theme/Theme;->getThemeDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/ve/theme/Theme;->getThemeJSONFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getThemeName()Ljava/lang/String;
.end method

.method protected abstract getThemePackage()Ljava/lang/String;
.end method
