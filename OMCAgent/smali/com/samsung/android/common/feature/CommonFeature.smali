.class public Lcom/samsung/android/common/feature/CommonFeature;
.super Ljava/lang/Object;
.source "CommonFeature.java"


# static fields
.field private static final ORIENT_LANDSCAPE:Ljava/lang/String; = "LAND"

.field public static final mIsHideStateBarOnLandscape:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/common/feature/CommonFeature;->isHideStateBarOnLandscape()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/common/feature/CommonFeature;->mIsHideStateBarOnLandscape:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isHideStateBarOnLandscape()Z
    .locals 3

    const-string v0, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
