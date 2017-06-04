.class public Lcom/amap/api/services/a/av;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/av;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/av;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/av;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/services/a/av;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/av;->g(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.amap.api.v2.apikey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    sget-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    goto :goto_0
.end method
