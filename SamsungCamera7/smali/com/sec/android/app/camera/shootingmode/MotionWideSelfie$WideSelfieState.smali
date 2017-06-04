.class public final enum Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;
.super Ljava/lang/Enum;
.source "MotionWideSelfie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WideSelfieState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

.field public static final enum STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

.field public static final enum STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

.field public static final enum STATE_STARTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

.field public static final enum STATE_STOPPING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    const-string v1, "STATE_STARTING"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STARTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    const-string v1, "STATE_SHOOTING"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    const-string v1, "STATE_STOPPING"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STOPPING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STARTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STOPPING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    return-object v0
.end method
