.class final enum Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
.super Ljava/lang/Enum;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CameraState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum PanningFace:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum PinchZoom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum TouchDown:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum Unlock:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field public static final enum ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "ZoomIn"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "ZoomOut"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "PinchZoom"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PinchZoom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "DoubleTapPause"

    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "PanningRandom"

    invoke-direct {v0, v1, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "PanningFace"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "TouchDown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchDown:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "TouchRelease"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "Unlock"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const-string/jumbo v1, "Overlap"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PinchZoom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchDown:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->$VALUES:[Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    .locals 1

    const-class v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->$VALUES:[Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    return-object v0
.end method
