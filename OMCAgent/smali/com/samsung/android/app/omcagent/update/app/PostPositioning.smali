.class public Lcom/samsung/android/app/omcagent/update/app/PostPositioning;
.super Ljava/lang/Object;
.source "PostPositioning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/update/app/PostPositioning$ParserDefaultWorkspace;
    }
.end annotation


# static fields
.field public static final LauncherURI:Landroid/net/Uri;


# instance fields
.field private context:Landroid/content/Context;

.field public cpc:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.launcher.provider.PostPosition/PositionInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;->LauncherURI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;->getLauncherProvider(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;->cpc:Landroid/content/ContentProviderClient;

    return-void
.end method

.method private getLauncherProvider(Landroid/content/Context;)Landroid/content/ContentProviderClient;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;->LauncherURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public positioningWidget(Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "valueCn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v6, "componentName"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "isHomeAdd"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "isAppsAdd"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "itemType"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->getItemType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "isHomeNewPage"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->isNewPage()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "isHomeReplace"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->isReplace()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "homeIndex"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->getPage()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "homeCellX"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->getCellX()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "homeCellY"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->getCellY()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "homeWidgetSpanX"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->getSpanX()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "homeWidgetSpanY"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->getSpanY()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "isHomeReplace"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "isHomePreloadedFolder"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v6, "homeFolderName"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;->cpc:Landroid/content/ContentProviderClient;

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;->LauncherURI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "uri is null"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URI : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
