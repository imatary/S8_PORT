.class public final enum Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;
.super Ljava/lang/Enum;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum ANIMATED_GIF_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum BURST_SHUTTER_HIGH_SPEED:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum BURST_SHUTTER_LOW_SPEED:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum LONG_EXPOSURE_SHUTTER_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum PANORAMA_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum REAR_SELF_SHOT:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum SHORT_SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum SHOT_AND_MORE_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum TIMER_TICK:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum TIMER_TICK_2SEC:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

.field public static final enum WIDE_SELFIE_OVER_BOUNDARY:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "SINGLE_SHUTTER"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "SHORT_SINGLE_SHUTTER"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SHORT_SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "PANORAMA_START"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "PANORAMA_END"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "PANORAMA_WARNING"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "SHOT_AND_MORE_START"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SHOT_AND_MORE_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "REAR_SELF_SHOT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->REAR_SELF_SHOT:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "WIDE_SELFIE_OVER_BOUNDARY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->WIDE_SELFIE_OVER_BOUNDARY:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "RECORDING_START"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "RECORDING_STOP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "TIMER_TICK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "TIMER_TICK_2SEC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK_2SEC:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "ANIMATED_GIF_SHUTTER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ANIMATED_GIF_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "LONG_EXPOSURE_SHUTTER_START"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->LONG_EXPOSURE_SHUTTER_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "LONG_EXPOSURE_SHUTTER_STOP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "BURST_SHUTTER_LOW_SPEED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->BURST_SHUTTER_LOW_SPEED:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const-string v1, "BURST_SHUTTER_HIGH_SPEED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->BURST_SHUTTER_HIGH_SPEED:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SHORT_SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SHOT_AND_MORE_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->REAR_SELF_SHOT:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->WIDE_SELFIE_OVER_BOUNDARY:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK_2SEC:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ANIMATED_GIF_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->LONG_EXPOSURE_SHUTTER_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->BURST_SHUTTER_LOW_SPEED:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->BURST_SHUTTER_HIGH_SPEED:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    return-object v0
.end method
