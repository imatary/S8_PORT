.class abstract Lcom/sec/samsung/gallery/features/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/features/Feature$FeatureType;
    }
.end annotation


# static fields
.field private static final APP_VERSION_CODE:I = 0x11e1a300

.field private static final TAG:Ljava/lang/String; = "Feature"

.field private static mOverVer30:Ljava/lang/Boolean;

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private final mFeatureType:Lcom/sec/samsung/gallery/features/Feature$FeatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/features/Feature;->mPackageManager:Landroid/content/pm/PackageManager;

    sput-object v0, Lcom/sec/samsung/gallery/features/Feature;->mOverVer30:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->DO_NOT_USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/features/Feature;-><init>(Lcom/sec/samsung/gallery/features/Feature$FeatureType;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/samsung/gallery/features/Feature$FeatureType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/features/Feature;->mFeatureType:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    return-void
.end method

.method private getVersionCode(Landroid/content/Context;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/Feature;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string/jumbo v2, "Feature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Gallery version ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private overVer30(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/Feature;->mOverVer30:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/features/Feature;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    const v3, 0x11e1a300

    if-lt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/sec/samsung/gallery/features/Feature;->mOverVer30:Ljava/lang/Boolean;

    sget-object v2, Lcom/sec/samsung/gallery/features/Feature;->mOverVer30:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    return v1

    :cond_0
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Feature"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/Feature;->mOverVer30:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/Feature;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/features/Feature;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/Feature;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method isEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/features/Feature;->overVer30(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/Feature;->isEnabledOverVer30(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/Feature;->isEnabledUnderVer30(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method isEnabledOverVer30(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isEnabledUnderVer30(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method usePreference()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/features/Feature;->mFeatureType:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    sget-object v1, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
