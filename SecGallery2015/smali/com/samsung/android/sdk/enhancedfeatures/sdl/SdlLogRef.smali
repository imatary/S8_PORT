.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;
.super Ljava/lang/Object;
.source "SdlLogRef.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isSupported:Z

.field private static mSdlLogRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->mSdlLogRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->isSupported:Z

    :try_start_0
    const-string/jumbo v1, "android.util.secutil.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->isSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->isSupported:Z

    const-string/jumbo v1, "unsupported"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->mSdlLogRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->mSdlLogRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->mSdlLogRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;

    return-object v0
.end method


# virtual methods
.method public secD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->isSupported:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public secE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->isSupported:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public secI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->isSupported:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public secV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->isSupported:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public secW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->isSupported:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
