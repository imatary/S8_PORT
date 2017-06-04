.class public final enum Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;
.super Ljava/lang/Enum;
.source "DCTouchEventHandlerCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

.field public static final enum DESTROY_THREAD:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

.field public static final enum DO_ACTION:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    const-string/jumbo v1, "DO_ACTION"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;->DO_ACTION:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    const-string/jumbo v1, "DESTROY_THREAD"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;->DESTROY_THREAD:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;->DO_ACTION:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;->DESTROY_THREAD:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;
    .locals 1

    const-class v0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    invoke-virtual {v0}, [Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    return-object v0
.end method
