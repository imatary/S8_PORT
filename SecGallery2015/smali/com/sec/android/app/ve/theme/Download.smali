.class public Lcom/sec/android/app/ve/theme/Download;
.super Ljava/lang/Object;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/theme/Download$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/ve/theme/Download$Adapter;

.field private final mBTReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/ve/theme/Download$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/theme/Download$1;-><init>(Lcom/sec/android/app/ve/theme/Download;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/theme/Download;->mBTReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/ve/theme/Download;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/ve/theme/Download;->getThemePackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/ve/theme/Download;)Lcom/sec/android/app/ve/theme/Download$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/theme/Download;->mAdapter:Lcom/sec/android/app/ve/theme/Download$Adapter;

    return-object v0
.end method

.method private getThemePackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/ve/theme/Download;->mAdapter:Lcom/sec/android/app/ve/theme/Download$Adapter;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/ve/theme/Download;->mAdapter:Lcom/sec/android/app/ve/theme/Download$Adapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/theme/Download$Adapter;->getThemePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemePackage(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
