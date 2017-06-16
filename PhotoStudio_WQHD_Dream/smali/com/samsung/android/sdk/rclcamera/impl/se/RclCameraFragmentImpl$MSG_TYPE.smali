.class public final enum Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;
.super Ljava/lang/Enum;
.source "RclCameraFragmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MSG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

.field public static final enum MESSAGE_CALL:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

.field public static final enum MESSAGE_MDM:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

.field public static final enum MESSAGE_NONE:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

.field public static final enum MESSAGE_UNABLE_TO_USE:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    const-string v1, "MESSAGE_CALL"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_CALL:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    const-string v1, "MESSAGE_MDM"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_MDM:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    const-string v1, "MESSAGE_UNABLE_TO_USE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_UNABLE_TO_USE:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    const-string v1, "MESSAGE_NONE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_NONE:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_CALL:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_MDM:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_UNABLE_TO_USE:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_NONE:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->$VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->$VALUES:[Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    return-object v0
.end method
