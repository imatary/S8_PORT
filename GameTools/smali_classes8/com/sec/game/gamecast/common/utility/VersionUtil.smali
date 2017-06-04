.class public Lcom/sec/game/gamecast/common/utility/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedVersion(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->getAvailableVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->getAvailableVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->getAllowVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v1, v0}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->checkedVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static checkedVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {p2}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->convertVersionToInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->convertVersionToInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->convertVersionToInt(Ljava/lang/String;)I

    move-result v0

    if-gt v1, v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    if-ge v2, v1, :cond_1

    if-lt v2, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public static convertVersionToInt(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    array-length v2, v0

    if-lez v2, :cond_3

    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    :goto_1
    add-int/2addr v1, v2

    array-length v2, v0

    if-le v2, v4, :cond_4

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    :goto_2
    add-int/2addr v1, v2

    array-length v2, v0

    if-le v2, v5, :cond_2

    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    add-int/2addr v1, v3

    move v3, v1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public static getAllowVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "allow_version"

    const-string/jumbo v3, "0.00.00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string/jumbo v2, "0.00.00"

    goto :goto_0
.end method

.method public static getAvailableVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "available_version"

    const-string/jumbo v3, "0.00.00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->getNowVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getNowVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->trimVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "0.00.00"

    goto :goto_0
.end method

.method public static getNowVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->trimVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "0.00.00"

    goto :goto_0
.end method

.method private static trimVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v2, :cond_0

    const-string/jumbo v1, "%s.%s.%s"

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v3, v0, v5

    aput-object v3, v2, v5

    aget-object v3, v0, v6

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
