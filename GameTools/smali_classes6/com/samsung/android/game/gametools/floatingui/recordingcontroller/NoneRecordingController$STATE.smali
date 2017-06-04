.class public final enum Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;
.super Ljava/lang/Enum;
.source "NoneRecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

.field public static final enum CANCEL:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

.field public static final enum IDLE:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

.field public static final enum READY:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

.field public static final enum RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

.field public static final enum SAVE_COMPLETED:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

.field public static final enum START_SAVING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

.field public static final enum STOP_RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->IDLE:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->READY:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    const-string/jumbo v1, "RECORDING"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    const-string/jumbo v1, "STOP_RECORDING"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->STOP_RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    const-string/jumbo v1, "START_SAVING"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->START_SAVING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    const-string/jumbo v1, "SAVE_COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->SAVE_COMPLETED:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    const-string/jumbo v1, "CANCEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->CANCEL:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->IDLE:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->READY:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->STOP_RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->START_SAVING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->SAVE_COMPLETED:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->CANCEL:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    return-object v0
.end method
