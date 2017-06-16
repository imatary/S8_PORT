.class public Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlPrivateModeManagerWrapper;
.super Ljava/lang/Object;
.source "SdlPrivateModeManagerWrapper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/PrivateModeManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/privatemode/PrivateModeManager;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
