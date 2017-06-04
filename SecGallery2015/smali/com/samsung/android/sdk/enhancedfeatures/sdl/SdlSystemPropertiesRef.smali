.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;
.super Ljava/lang/Object;
.source "SdlSystemPropertiesRef.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isSupported:Z

.field private static mSdlSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->TAG:Ljava/lang/String;

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z

    :try_start_0
    const-string/jumbo v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z

    const-string/jumbo v1, "class not found. unsupported"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->mSdlSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->mSdlSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->mSdlSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->isSupported:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
