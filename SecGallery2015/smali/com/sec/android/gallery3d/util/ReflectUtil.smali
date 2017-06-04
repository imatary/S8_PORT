.class public Lcom/sec/android/gallery3d/util/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# static fields
.field private static final sInstance:Lcom/sec/android/gallery3d/util/ReflectUtil;


# instance fields
.field private mCanDrawOverlays:Ljava/lang/reflect/Method;

.field private mDisplayHasContent:Ljava/lang/reflect/Method;

.field private mGetDeviceAddress:Ljava/lang/reflect/Method;

.field private mGetIPAddress:Ljava/lang/reflect/Method;

.field private mGetP2pMacAddress:Ljava/lang/reflect/Method;

.field private mIsAuSLServiceRunning:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/util/ReflectUtil;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/ReflectUtil;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/ReflectUtil;->sInstance:Lcom/sec/android/gallery3d/util/ReflectUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/util/ReflectUtil;->sInstance:Lcom/sec/android/gallery3d/util/ReflectUtil;

    return-object v0
.end method


# virtual methods
.method public canDrawOverlays(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mCanDrawOverlays:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.provider.Settings"

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/Reflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "canDrawOverlays"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/util/Reflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mCanDrawOverlays:Ljava/lang/reflect/Method;

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mCanDrawOverlays:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/util/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public displayHasContent(Landroid/hardware/display/DisplayManager;I)Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mDisplayHasContent:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Landroid/hardware/display/DisplayManager;

    const-string/jumbo v2, "semGetPresentationOwner"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/Reflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mDisplayHasContent:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mDisplayHasContent:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/sec/android/gallery3d/util/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceAddress(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mGetDeviceAddress:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Landroid/media/MediaRouter$RouteInfo;

    const-string/jumbo v2, "semGetDeviceAddress"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/Reflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mGetDeviceAddress:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mGetDeviceAddress:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/sec/android/gallery3d/util/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIPAddress(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mGetIPAddress:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Lcom/samsung/android/allshare/Device;

    const-string/jumbo v2, "getIPAddress"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/Reflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mGetIPAddress:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mGetIPAddress:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/sec/android/gallery3d/util/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getP2pMacAddress(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mGetP2pMacAddress:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Lcom/samsung/android/allshare/Device;

    const-string/jumbo v2, "getSecProductP2pMacAddr"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/Reflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mGetP2pMacAddress:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mGetP2pMacAddress:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/sec/android/gallery3d/util/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuSLServiceRunning(Landroid/hardware/display/DisplayManager;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mIsAuSLServiceRunning:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    const-class v2, Landroid/hardware/display/DisplayManager;

    const-string/jumbo v3, "isAuSLServiceRunning"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/Reflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mIsAuSLServiceRunning:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ReflectUtil;->mIsAuSLServiceRunning:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/sec/android/gallery3d/util/Reflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1
.end method
