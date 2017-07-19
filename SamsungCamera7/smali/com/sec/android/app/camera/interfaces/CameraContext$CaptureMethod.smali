.class public final enum Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;
.super Ljava/lang/Enum;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

.field public static final enum BIXBY_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

.field public static final enum BUTTON:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

.field public static final enum HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

.field public static final enum PALM_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

.field public static final enum SCREEN_TOUCH:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

.field public static final enum VOICE_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

.field public static final enum VOLUME_KEY:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->BUTTON:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    const-string v1, "VOLUME_KEY"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->VOLUME_KEY:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    const-string v1, "VOICE_COMMAND"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->VOICE_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    const-string v1, "SCREEN_TOUCH"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->SCREEN_TOUCH:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    const-string v1, "PALM_DETECTION"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->PALM_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    const-string v1, "HRM_SHUTTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    const-string v1, "BIXBY_COMMAND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->BIXBY_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->BUTTON:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->VOLUME_KEY:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->VOICE_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->SCREEN_TOUCH:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->PALM_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->BIXBY_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    return-object v0
.end method
