.class public Lcom/sec/android/app/ve/VEApp;
.super Ljava/lang/Object;
.source "VEApp.java"


# static fields
.field public static EngineInitImageOnFly:Z

.field public static VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

.field public static gAdaper:Lcom/sec/android/app/ve/VEAdapter;

.field public static gBGMManager:Lcom/sec/android/app/ve/bgm/BGMManager;

.field private static gContext:Landroid/content/Context;

.field public static gExport:Lcom/sec/android/app/ve/export/Export;

.field public static gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

.field public static isThreadBasedInitImges:Z

.field public static mCurrentVersion:Ljava/lang/String;

.field private static volatile mNotifier:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static sVESDKWrapper:Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "2.1.07"

    sput-object v0, Lcom/sec/android/app/ve/VEApp;->mCurrentVersion:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/ve/theme/ThemeManager;

    invoke-direct {v0}, Lcom/sec/android/app/ve/theme/ThemeManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    new-instance v0, Lcom/sec/android/app/ve/export/Export;

    invoke-direct {v0}, Lcom/sec/android/app/ve/export/Export;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    new-instance v0, Lcom/sec/android/app/ve/bgm/BGMManager;

    invoke-direct {v0}, Lcom/sec/android/app/ve/bgm/BGMManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/VEApp;->gBGMManager:Lcom/sec/android/app/ve/bgm/BGMManager;

    sput-object v1, Lcom/sec/android/app/ve/VEApp;->gAdaper:Lcom/sec/android/app/ve/VEAdapter;

    sput-object v1, Lcom/sec/android/app/ve/VEApp;->mNotifier:Ljava/util/ArrayList;

    sput-boolean v2, Lcom/sec/android/app/ve/VEApp;->EngineInitImageOnFly:Z

    sput-boolean v2, Lcom/sec/android/app/ve/VEApp;->isThreadBasedInitImges:Z

    sput-object v1, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    return-void
.end method

.method public static createDownload()Lcom/sec/android/app/ve/theme/Download;
    .locals 1

    new-instance v0, Lcom/sec/android/app/ve/theme/Download;

    invoke-direct {v0}, Lcom/sec/android/app/ve/theme/Download;-><init>()V

    return-object v0
.end method

.method public static getAppAssets()Landroid/content/res/AssetManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static getAppPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getFilesDirectory()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFullySpecifiedExternalFilesPath()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInitialApplication()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPixDimen(I)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getStringValue(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/sec/android/app/ve/VEAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "VE_COMMON"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VE_COMMON Lite version :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/ve/VEApp;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sput-object p0, Lcom/sec/android/app/ve/VEApp;->gAdaper:Lcom/sec/android/app/ve/VEAdapter;

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/app/video/editor/external/VideoEditor;->getInstance(Landroid/content/res/AssetManager;Landroid/content/Context;)Lcom/samsung/app/video/editor/external/VideoEditor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->sVESDKWrapper:Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/VEApp;->sVESDKWrapper:Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Application Context is not set. setApplication context before calling this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setGlobalApplicationContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    return-void
.end method

.method public static showToast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToast(Ljava/lang/String;I)V
    .locals 1

    const v0, 0x800003

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/ve/VEApp;->showToast(Ljava/lang/String;II)V

    return-void
.end method

.method public static showToast(Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/ve/VEApp;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static unbindFromService(Landroid/content/ServiceConnection;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
