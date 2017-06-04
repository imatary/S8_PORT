.class public Lcom/samsung/android/common/diagmon/PackageInformation;
.super Ljava/lang/Object;
.source "PackageInformation.java"


# static fields
.field public static instance:Lcom/samsung/android/common/diagmon/PackageInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/common/diagmon/PackageInformation;

    invoke-direct {v0}, Lcom/samsung/android/common/diagmon/PackageInformation;-><init>()V

    sput-object v0, Lcom/samsung/android/common/diagmon/PackageInformation;->instance:Lcom/samsung/android/common/diagmon/PackageInformation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/common/diagmon/PackageInformation;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/common/diagmon/PackageInformation;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v2, ""

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    :cond_0
    const-string v2, "unknown"

    goto :goto_0
.end method

.method public simpleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/common/diagmon/PackageInformation;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method
