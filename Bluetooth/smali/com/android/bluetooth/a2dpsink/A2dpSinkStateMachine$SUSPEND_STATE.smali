.class final enum Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;
.super Ljava/lang/Enum;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SUSPEND_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

.field public static final enum INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

.field public static final enum RESUMED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

.field public static final enum RESUMING:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

.field public static final enum SUSPENDED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

.field public static final enum SUSPENDING:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    const-string/jumbo v1, "SUSPENDING"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->SUSPENDING:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    const-string/jumbo v1, "SUSPENDED"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->SUSPENDED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    const-string/jumbo v1, "RESUMING"

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->RESUMING:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    const-string/jumbo v1, "RESUMED"

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->RESUMED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->SUSPENDING:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->SUSPENDED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->RESUMING:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->RESUMED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->$VALUES:[Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;
    .locals 1

    const-class v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->$VALUES:[Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    return-object v0
.end method
