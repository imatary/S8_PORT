.class public Lcom/sec/android/wallpapercropper2/WallpaperApplication;
.super Landroid/app/Application;
.source "WallpaperApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cropper2_WallpaperApp"


# instance fields
.field private mPreviousActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreviousAct()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/WallpaperApplication;->mPreviousActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string/jumbo v0, "Cropper2_WallpaperApp"

    const-string/jumbo v1, "WallpaperApp onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->initializeFeatures(Landroid/content/Context;)V

    const-string/jumbo v0, "Cropper2_WallpaperApp"

    const-string/jumbo v1, "WallpaperApp onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreviousAct(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/WallpaperApplication;->mPreviousActivity:Landroid/app/Activity;

    return-void
.end method
