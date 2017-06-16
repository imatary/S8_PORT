.class final enum Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;
.super Ljava/lang/Enum;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AUDIO_PATCH_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

.field public static final enum CREATE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

.field public static final enum RELEASE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    const-string/jumbo v1, "RELEASE_AUDIO_PATCH"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->RELEASE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    const-string/jumbo v1, "CREATE_AUDIO_PATCH"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->CREATE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->RELEASE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->CREATE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->$VALUES:[Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;
    .locals 1

    const-class v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->$VALUES:[Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    return-object v0
.end method
